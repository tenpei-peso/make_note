import 'dart:typed_data';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:google_mlkit_text_recognition/google_mlkit_text_recognition.dart';
import 'package:image_picker/image_picker.dart';
import 'package:firebase_auth/firebase_auth.dart';

part 'top_page_notifier.freezed.dart';


@freezed
class TopPageState with _$TopPageState {
  factory TopPageState({
    @Default(false) bool isTopPageLoading,
    @Default([]) List<XFile> fileDataList,
    @Default('') String detectionText,
  }) = _TopPageState;
}

final topPageProvider =
    StateNotifierProvider<TopPageNotifier, TopPageState>((ref) {
  return TopPageNotifier();
});

class TopPageNotifier extends StateNotifier<TopPageState> {
  TopPageNotifier() : super(TopPageState()) {
    _init();
  }

  final imagePicker = ImagePicker();
  final auth = FirebaseAuth.instance;

  _init() {
    // 任意の初期化処理
  }

  // ギャラリーから写真を取得するメソッド
  Future<void> getImageFromGarally() async {
    final fileDataList = await imagePicker.pickMultiImage();
      if (fileDataList.isNotEmpty) {
        state = state.copyWith(
          fileDataList: fileDataList,
        );
      }
    print('画像とってくるやつ');
    print(state.fileDataList);
  }

  Future<void> textDetection(XFile fileData) async {
    // XFileをInputImageに変換
    InputImage inputImage = InputImage.fromFilePath(fileData.path);
    final textRecognizer = TextRecognizer(script: TextRecognitionScript.japanese);

    //画像解析して文字抽出
    final RecognizedText recognizedText = await textRecognizer.processImage(inputImage);
    String text = recognizedText.text;

    if(text.isEmpty) {
      return;
    }

    state = state.copyWith(
      detectionText : text,
    );

  }


}
