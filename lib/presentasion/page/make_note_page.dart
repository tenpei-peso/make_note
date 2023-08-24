import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_make_note/repository/open_ai_notifier.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MakeNotePage extends ConsumerWidget {
  const MakeNotePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final openAiNotifier = ref.watch(openAiNotifierProvider.notifier);
    final aiText =
    ref.watch(openAiNotifierProvider.select((state) => state.openAiText)) ?? '';
    final isLoading =
        ref.watch(openAiNotifierProvider.select((state) => state.isLoading));

    if(isLoading) {
      return const Center(child: CircularProgressIndicator());
    }

    return Scaffold(
      appBar: AppBar(
        title: Text('ああ'),
      ),
      body: Column(
        children: [
          if (aiText != '')
          Expanded(
            child: Markdown(
              data: aiText,
            ),
          ),
          ElevatedButton(
            onPressed: () async {
              await openAiNotifier.sendMessage();
            },
            child: Text('AIノート作成'),
          ),
        ],
      ),
    );
  }
}
