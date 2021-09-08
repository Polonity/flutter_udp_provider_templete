// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'my_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$MyModelTearOff {
  const _$MyModelTearOff();

  _MyModel call({int? seqNum, String? msg}) {
    return _MyModel(
      seqNum: seqNum,
      msg: msg,
    );
  }
}

/// @nodoc
const $MyModel = _$MyModelTearOff();

/// @nodoc
mixin _$MyModel {
  int? get seqNum => throw _privateConstructorUsedError;
  String? get msg => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MyModelCopyWith<MyModel> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MyModelCopyWith<$Res> {
  factory $MyModelCopyWith(MyModel value, $Res Function(MyModel) then) =
      _$MyModelCopyWithImpl<$Res>;
  $Res call({int? seqNum, String? msg});
}

/// @nodoc
class _$MyModelCopyWithImpl<$Res> implements $MyModelCopyWith<$Res> {
  _$MyModelCopyWithImpl(this._value, this._then);

  final MyModel _value;
  // ignore: unused_field
  final $Res Function(MyModel) _then;

  @override
  $Res call({
    Object? seqNum = freezed,
    Object? msg = freezed,
  }) {
    return _then(_value.copyWith(
      seqNum: seqNum == freezed
          ? _value.seqNum
          : seqNum // ignore: cast_nullable_to_non_nullable
              as int?,
      msg: msg == freezed
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$MyModelCopyWith<$Res> implements $MyModelCopyWith<$Res> {
  factory _$MyModelCopyWith(_MyModel value, $Res Function(_MyModel) then) =
      __$MyModelCopyWithImpl<$Res>;
  @override
  $Res call({int? seqNum, String? msg});
}

/// @nodoc
class __$MyModelCopyWithImpl<$Res> extends _$MyModelCopyWithImpl<$Res>
    implements _$MyModelCopyWith<$Res> {
  __$MyModelCopyWithImpl(_MyModel _value, $Res Function(_MyModel) _then)
      : super(_value, (v) => _then(v as _MyModel));

  @override
  _MyModel get _value => super._value as _MyModel;

  @override
  $Res call({
    Object? seqNum = freezed,
    Object? msg = freezed,
  }) {
    return _then(_MyModel(
      seqNum: seqNum == freezed
          ? _value.seqNum
          : seqNum // ignore: cast_nullable_to_non_nullable
              as int?,
      msg: msg == freezed
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_MyModel with DiagnosticableTreeMixin implements _MyModel {
  const _$_MyModel({this.seqNum, this.msg});

  @override
  final int? seqNum;
  @override
  final String? msg;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MyModel(seqNum: $seqNum, msg: $msg)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'MyModel'))
      ..add(DiagnosticsProperty('seqNum', seqNum))
      ..add(DiagnosticsProperty('msg', msg));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _MyModel &&
            (identical(other.seqNum, seqNum) ||
                const DeepCollectionEquality().equals(other.seqNum, seqNum)) &&
            (identical(other.msg, msg) ||
                const DeepCollectionEquality().equals(other.msg, msg)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(seqNum) ^
      const DeepCollectionEquality().hash(msg);

  @JsonKey(ignore: true)
  @override
  _$MyModelCopyWith<_MyModel> get copyWith =>
      __$MyModelCopyWithImpl<_MyModel>(this, _$identity);
}

abstract class _MyModel implements MyModel {
  const factory _MyModel({int? seqNum, String? msg}) = _$_MyModel;

  @override
  int? get seqNum => throw _privateConstructorUsedError;
  @override
  String? get msg => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$MyModelCopyWith<_MyModel> get copyWith =>
      throw _privateConstructorUsedError;
}
