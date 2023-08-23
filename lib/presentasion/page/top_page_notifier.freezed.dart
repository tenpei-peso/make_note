// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'top_page_notifier.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TopPageState {
  bool get isTopPageLoading => throw _privateConstructorUsedError;
  List<XFile> get fileDataList => throw _privateConstructorUsedError;
  String get detectionText => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TopPageStateCopyWith<TopPageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TopPageStateCopyWith<$Res> {
  factory $TopPageStateCopyWith(
          TopPageState value, $Res Function(TopPageState) then) =
      _$TopPageStateCopyWithImpl<$Res, TopPageState>;
  @useResult
  $Res call(
      {bool isTopPageLoading, List<XFile> fileDataList, String detectionText});
}

/// @nodoc
class _$TopPageStateCopyWithImpl<$Res, $Val extends TopPageState>
    implements $TopPageStateCopyWith<$Res> {
  _$TopPageStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isTopPageLoading = null,
    Object? fileDataList = null,
    Object? detectionText = null,
  }) {
    return _then(_value.copyWith(
      isTopPageLoading: null == isTopPageLoading
          ? _value.isTopPageLoading
          : isTopPageLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      fileDataList: null == fileDataList
          ? _value.fileDataList
          : fileDataList // ignore: cast_nullable_to_non_nullable
              as List<XFile>,
      detectionText: null == detectionText
          ? _value.detectionText
          : detectionText // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TopPageStateCopyWith<$Res>
    implements $TopPageStateCopyWith<$Res> {
  factory _$$_TopPageStateCopyWith(
          _$_TopPageState value, $Res Function(_$_TopPageState) then) =
      __$$_TopPageStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isTopPageLoading, List<XFile> fileDataList, String detectionText});
}

/// @nodoc
class __$$_TopPageStateCopyWithImpl<$Res>
    extends _$TopPageStateCopyWithImpl<$Res, _$_TopPageState>
    implements _$$_TopPageStateCopyWith<$Res> {
  __$$_TopPageStateCopyWithImpl(
      _$_TopPageState _value, $Res Function(_$_TopPageState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isTopPageLoading = null,
    Object? fileDataList = null,
    Object? detectionText = null,
  }) {
    return _then(_$_TopPageState(
      isTopPageLoading: null == isTopPageLoading
          ? _value.isTopPageLoading
          : isTopPageLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      fileDataList: null == fileDataList
          ? _value._fileDataList
          : fileDataList // ignore: cast_nullable_to_non_nullable
              as List<XFile>,
      detectionText: null == detectionText
          ? _value.detectionText
          : detectionText // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_TopPageState implements _TopPageState {
  _$_TopPageState(
      {this.isTopPageLoading = false,
      final List<XFile> fileDataList = const [],
      this.detectionText = ''})
      : _fileDataList = fileDataList;

  @override
  @JsonKey()
  final bool isTopPageLoading;
  final List<XFile> _fileDataList;
  @override
  @JsonKey()
  List<XFile> get fileDataList {
    if (_fileDataList is EqualUnmodifiableListView) return _fileDataList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_fileDataList);
  }

  @override
  @JsonKey()
  final String detectionText;

  @override
  String toString() {
    return 'TopPageState(isTopPageLoading: $isTopPageLoading, fileDataList: $fileDataList, detectionText: $detectionText)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TopPageState &&
            (identical(other.isTopPageLoading, isTopPageLoading) ||
                other.isTopPageLoading == isTopPageLoading) &&
            const DeepCollectionEquality()
                .equals(other._fileDataList, _fileDataList) &&
            (identical(other.detectionText, detectionText) ||
                other.detectionText == detectionText));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isTopPageLoading,
      const DeepCollectionEquality().hash(_fileDataList), detectionText);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TopPageStateCopyWith<_$_TopPageState> get copyWith =>
      __$$_TopPageStateCopyWithImpl<_$_TopPageState>(this, _$identity);
}

abstract class _TopPageState implements TopPageState {
  factory _TopPageState(
      {final bool isTopPageLoading,
      final List<XFile> fileDataList,
      final String detectionText}) = _$_TopPageState;

  @override
  bool get isTopPageLoading;
  @override
  List<XFile> get fileDataList;
  @override
  String get detectionText;
  @override
  @JsonKey(ignore: true)
  _$$_TopPageStateCopyWith<_$_TopPageState> get copyWith =>
      throw _privateConstructorUsedError;
}
