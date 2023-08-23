// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'preview_page_notifier.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PreviewPageState {
  bool get isPreviewPageLoading => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PreviewPageStateCopyWith<PreviewPageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PreviewPageStateCopyWith<$Res> {
  factory $PreviewPageStateCopyWith(
          PreviewPageState value, $Res Function(PreviewPageState) then) =
      _$PreviewPageStateCopyWithImpl<$Res, PreviewPageState>;
  @useResult
  $Res call({bool isPreviewPageLoading});
}

/// @nodoc
class _$PreviewPageStateCopyWithImpl<$Res, $Val extends PreviewPageState>
    implements $PreviewPageStateCopyWith<$Res> {
  _$PreviewPageStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isPreviewPageLoading = null,
  }) {
    return _then(_value.copyWith(
      isPreviewPageLoading: null == isPreviewPageLoading
          ? _value.isPreviewPageLoading
          : isPreviewPageLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PreviewPageStateCopyWith<$Res>
    implements $PreviewPageStateCopyWith<$Res> {
  factory _$$_PreviewPageStateCopyWith(
          _$_PreviewPageState value, $Res Function(_$_PreviewPageState) then) =
      __$$_PreviewPageStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isPreviewPageLoading});
}

/// @nodoc
class __$$_PreviewPageStateCopyWithImpl<$Res>
    extends _$PreviewPageStateCopyWithImpl<$Res, _$_PreviewPageState>
    implements _$$_PreviewPageStateCopyWith<$Res> {
  __$$_PreviewPageStateCopyWithImpl(
      _$_PreviewPageState _value, $Res Function(_$_PreviewPageState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isPreviewPageLoading = null,
  }) {
    return _then(_$_PreviewPageState(
      isPreviewPageLoading: null == isPreviewPageLoading
          ? _value.isPreviewPageLoading
          : isPreviewPageLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_PreviewPageState implements _PreviewPageState {
  _$_PreviewPageState({this.isPreviewPageLoading = false});

  @override
  @JsonKey()
  final bool isPreviewPageLoading;

  @override
  String toString() {
    return 'PreviewPageState(isPreviewPageLoading: $isPreviewPageLoading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PreviewPageState &&
            (identical(other.isPreviewPageLoading, isPreviewPageLoading) ||
                other.isPreviewPageLoading == isPreviewPageLoading));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isPreviewPageLoading);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PreviewPageStateCopyWith<_$_PreviewPageState> get copyWith =>
      __$$_PreviewPageStateCopyWithImpl<_$_PreviewPageState>(this, _$identity);
}

abstract class _PreviewPageState implements PreviewPageState {
  factory _PreviewPageState({final bool isPreviewPageLoading}) =
      _$_PreviewPageState;

  @override
  bool get isPreviewPageLoading;
  @override
  @JsonKey(ignore: true)
  _$$_PreviewPageStateCopyWith<_$_PreviewPageState> get copyWith =>
      throw _privateConstructorUsedError;
}
