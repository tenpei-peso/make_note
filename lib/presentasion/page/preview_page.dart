import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_make_note/presentasion/page/make_note_page.dart';
import 'package:flutter_make_note/presentasion/page/preview_page_notifier.dart';
import 'package:flutter_make_note/presentasion/page/top_page_notifier.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class PreviewPage extends ConsumerWidget {
  const PreviewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final detectionText =
        ref.watch(topPageProvider.select((state) => state.detectionText));
    final isLoading =
    ref.watch(previewPageProvider.select((state) => state.isPreviewPageLoading));
    final previewPageNotifier = ref.watch(previewPageProvider.notifier);

    if (isLoading) {
      return const Center(child: CircularProgressIndicator());
    }

    if (detectionText == "") {
      return const Text('読み取れませんでした');
    }

    return Scaffold(
      appBar: AppBar(
        title: Text('ああ'),
      ),
      body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(24),
                child: Text(detectionText),
              ),
              ElevatedButton(
                onPressed: () async {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const MakeNotePage()),
                  );
                },
                child: Text('AIノート作成'),
              ),
            ],
          )
      ),
    );
  }
}
