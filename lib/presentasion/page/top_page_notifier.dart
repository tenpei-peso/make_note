import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_picker/image_picker.dart';
part 'top_page_notifier.freezed.dart';

@freezed
class TopPageState with _$TopPageState {
  factory TopPageState({
    @Default(false) bool isLoading,
    XFile? fileData,
  }) = _TopPageState;
}


class TopPageNotifier extends StateNotifier<TopPageState> {
  TopPageNotifier() : super(TopPageState());
}