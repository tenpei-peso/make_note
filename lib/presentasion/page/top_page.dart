import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_make_note/presentasion/page/preview_page.dart';
import 'package:flutter_make_note/presentasion/page/top_page_notifier.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:image_picker/image_picker.dart';

class TopPage extends ConsumerWidget {
  const TopPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    List<XFile> fileDataList =
        ref.watch(topPageProvider.select((state) => state.fileDataList)) ?? [];
    final topPageNotifier = ref.watch(topPageProvider.notifier);

    return Scaffold(
      appBar: AppBar(
        title: Text('ああ'),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            ...fileDataList.map((image) {
              return Container(
                  width: 300, height: 300, child: Image.file(File(image.path)));
            }).toList(),
            if (fileDataList.isNotEmpty)
              ElevatedButton(
                onPressed: () async {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const PreviewPage()),
                  );
                },
                child: Text('解析を始める'),
              ),
          ]),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          await topPageNotifier.getImageFromGarally();
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
