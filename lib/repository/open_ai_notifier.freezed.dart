// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'open_ai_notifier.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$OpenAiState {
  String get openAiText => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $OpenAiStateCopyWith<OpenAiState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OpenAiStateCopyWith<$Res> {
  factory $OpenAiStateCopyWith(
          OpenAiState value, $Res Function(OpenAiState) then) =
      _$OpenAiStateCopyWithImpl<$Res, OpenAiState>;
  @useResult
  $Res call({String openAiText});
}

/// @nodoc
class _$OpenAiStateCopyWithImpl<$Res, $Val extends OpenAiState>
    implements $OpenAiStateCopyWith<$Res> {
  _$OpenAiStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? openAiText = null,
  }) {
    return _then(_value.copyWith(
      openAiText: null == openAiText
          ? _value.openAiText
          : openAiText // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_OpenAiStateCopyWith<$Res>
    implements $OpenAiStateCopyWith<$Res> {
  factory _$$_OpenAiStateCopyWith(
          _$_OpenAiState value, $Res Function(_$_OpenAiState) then) =
      __$$_OpenAiStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String openAiText});
}

/// @nodoc
class __$$_OpenAiStateCopyWithImpl<$Res>
    extends _$OpenAiStateCopyWithImpl<$Res, _$_OpenAiState>
    implements _$$_OpenAiStateCopyWith<$Res> {
  __$$_OpenAiStateCopyWithImpl(
      _$_OpenAiState _value, $Res Function(_$_OpenAiState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? openAiText = null,
  }) {
    return _then(_$_OpenAiState(
      openAiText: null == openAiText
          ? _value.openAiText
          : openAiText // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_OpenAiState implements _OpenAiState {
  _$_OpenAiState({this.openAiText = ''});

  @override
  @JsonKey()
  final String openAiText;

  @override
  String toString() {
    return 'OpenAiState(openAiText: $openAiText)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OpenAiState &&
            (identical(other.openAiText, openAiText) ||
                other.openAiText == openAiText));
  }

  @override
  int get hashCode => Object.hash(runtimeType, openAiText);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OpenAiStateCopyWith<_$_OpenAiState> get copyWith =>
      __$$_OpenAiStateCopyWithImpl<_$_OpenAiState>(this, _$identity);
}

abstract class _OpenAiState implements OpenAiState {
  factory _OpenAiState({final String openAiText}) = _$_OpenAiState;

  @override
  String get openAiText;
  @override
  @JsonKey(ignore: true)
  _$$_OpenAiStateCopyWith<_$_OpenAiState> get copyWith =>
      throw _privateConstructorUsedError;
}
