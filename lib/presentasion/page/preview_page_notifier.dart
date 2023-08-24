import 'package:flutter_make_note/presentasion/page/top_page_notifier.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:google_mlkit_text_recognition/google_mlkit_text_recognition.dart';
import 'package:image_picker/image_picker.dart';
import 'package:firebase_auth/firebase_auth.dart';

part 'preview_page_notifier.freezed.dart';

@freezed
class PreviewPageState with _$PreviewPageState {
  factory PreviewPageState({
    @Default(false) bool isPreviewPageLoading,
  }) = _PreviewPageState;
}

final previewPageProvider =
    StateNotifierProvider<PreviewPageNotifier, PreviewPageState>((ref) {
  return PreviewPageNotifier(ref);
});

class PreviewPageNotifier extends StateNotifier<PreviewPageState> {
  final Ref ref;

  PreviewPageNotifier(this.ref) : super(PreviewPageState()) {
    Future.microtask(() {
      _init();
    });
  }

  _init() async {
    state = state.copyWith(isPreviewPageLoading: true);
    final topPageNotifier = ref.read(topPageProvider.notifier);
    List<XFile> fileDataList = await ref
            .watch(topPageProvider.select((state) => state.fileDataList)) ?? [];

    await topPageNotifier.textDetection(fileDataList.first);
    state = state.copyWith(isPreviewPageLoading: false);
  }
}
