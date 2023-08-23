import 'dart:typed_data';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_picker/image_picker.dart';
import 'package:cloud_functions/cloud_functions.dart';
import 'package:firebase_auth/firebase_auth.dart';

part 'top_page_notifier.freezed.dart';


@freezed
class TopPageState with _$TopPageState {
  factory TopPageState({
    @Default(false) bool isLoading,
    @Default([]) List<XFile> fileDataList,
  }) = _TopPageState;
}

final topPageProvider =
    StateNotifierProvider<TopPageNotifier, TopPageState>((ref) {
  return TopPageNotifier();
});

class TopPageNotifier extends StateNotifier<TopPageState> {
  TopPageNotifier() : super(TopPageState());

  final imagePicker = ImagePicker();
  final auth = FirebaseAuth.instance;
  final functions = FirebaseFunctions.instance;

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

  // Future<void> textDetection(XFile fileData) async {
  //   // ユーザー認証がされていない場合、匿名認証を行う
  //   Uint8List uint8listData = await fileData.readAsBytes();
  //   if (auth.currentUser == null) {
  //     await auth.signInAnonymously();
  //   }
  //   print(fileData.path);
  //
  //   // 画像データをテキスト検出する
  //   final result = await functions.httpsCallable('textDetection').call(uint8listData);
  //   print(result);
  // }


}
