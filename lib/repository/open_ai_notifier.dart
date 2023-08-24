import 'package:dart_openai/dart_openai.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../presentasion/page/top_page_notifier.dart';

part 'open_ai_notifier.freezed.dart';

@freezed
class OpenAiState with _$OpenAiState {
  factory OpenAiState({
    @Default('') String openAiText,
    @Default(false) bool isLoading
  }) = _OpenAiState;
}

final openAiNotifierProvider =
StateNotifierProvider<OpenAiNotifier, OpenAiState>((ref) {
  return OpenAiNotifier(ref);
});

class OpenAiNotifier extends StateNotifier<OpenAiState> {
  final Ref ref;

  OpenAiNotifier(this.ref) : super(OpenAiState()) {
    Future.microtask(() {
      _init();
    });
  }

  _init() async {

  }

  Future<void> sendMessage() async {
    state = state.copyWith(isLoading: true);
    final detectionText =
    ref.watch(topPageProvider.select((state) => state.detectionText));
    // メッセージをuserロールでモデル化
    OpenAIChatCompletionModel chatCompletion = await OpenAI.instance.chat.create(
      model: "gpt-3.5-turbo",
      messages: [
        OpenAIChatCompletionChoiceMessageModel(
          content: "${detectionText}\n 上記の文章をわかりやすく整理し、また内容を補完してMarkdownで出力 \n 重要単語は強調する \n 見出しや目次も作成する \n 箇条書きを使う\n# 出力フォーマット",
          role: OpenAIChatMessageRole.user,
        ),
      ],
    );
    OpenAIChatCompletionChoiceMessageModel text = chatCompletion.choices.first.message;
    state = state.copyWith(
        openAiText: text.content,
        isLoading: false,
    );
  }
}
