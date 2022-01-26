// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'curiosity_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CuriosityModel _$CuriosityModelFromJson(Map<String, dynamic> json) {
  return _CuriosityModel.fromJson(json);
}

/// @nodoc
class _$CuriosityModelTearOff {
  const _$CuriosityModelTearOff();

  _CuriosityModel call(
      {required int id, required String img_src, required String earth_date}) {
    return _CuriosityModel(
      id: id,
      img_src: img_src,
      earth_date: earth_date,
    );
  }

  CuriosityModel fromJson(Map<String, Object?> json) {
    return CuriosityModel.fromJson(json);
  }
}

/// @nodoc
const $CuriosityModel = _$CuriosityModelTearOff();

/// @nodoc
mixin _$CuriosityModel {
  int get id => throw _privateConstructorUsedError;
  String get img_src => throw _privateConstructorUsedError;
  String get earth_date => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CuriosityModelCopyWith<CuriosityModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CuriosityModelCopyWith<$Res> {
  factory $CuriosityModelCopyWith(
          CuriosityModel value, $Res Function(CuriosityModel) then) =
      _$CuriosityModelCopyWithImpl<$Res>;
  $Res call({int id, String img_src, String earth_date});
}

/// @nodoc
class _$CuriosityModelCopyWithImpl<$Res>
    implements $CuriosityModelCopyWith<$Res> {
  _$CuriosityModelCopyWithImpl(this._value, this._then);

  final CuriosityModel _value;
  // ignore: unused_field
  final $Res Function(CuriosityModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? img_src = freezed,
    Object? earth_date = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      img_src: img_src == freezed
          ? _value.img_src
          : img_src // ignore: cast_nullable_to_non_nullable
              as String,
      earth_date: earth_date == freezed
          ? _value.earth_date
          : earth_date // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$CuriosityModelCopyWith<$Res>
    implements $CuriosityModelCopyWith<$Res> {
  factory _$CuriosityModelCopyWith(
          _CuriosityModel value, $Res Function(_CuriosityModel) then) =
      __$CuriosityModelCopyWithImpl<$Res>;
  @override
  $Res call({int id, String img_src, String earth_date});
}

/// @nodoc
class __$CuriosityModelCopyWithImpl<$Res>
    extends _$CuriosityModelCopyWithImpl<$Res>
    implements _$CuriosityModelCopyWith<$Res> {
  __$CuriosityModelCopyWithImpl(
      _CuriosityModel _value, $Res Function(_CuriosityModel) _then)
      : super(_value, (v) => _then(v as _CuriosityModel));

  @override
  _CuriosityModel get _value => super._value as _CuriosityModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? img_src = freezed,
    Object? earth_date = freezed,
  }) {
    return _then(_CuriosityModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      img_src: img_src == freezed
          ? _value.img_src
          : img_src // ignore: cast_nullable_to_non_nullable
              as String,
      earth_date: earth_date == freezed
          ? _value.earth_date
          : earth_date // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CuriosityModel implements _CuriosityModel {
  const _$_CuriosityModel(
      {required this.id, required this.img_src, required this.earth_date});

  factory _$_CuriosityModel.fromJson(Map<String, dynamic> json) =>
      _$$_CuriosityModelFromJson(json);

  @override
  final int id;
  @override
  final String img_src;
  @override
  final String earth_date;

  @override
  String toString() {
    return 'CuriosityModel(id: $id, img_src: $img_src, earth_date: $earth_date)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CuriosityModel &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.img_src, img_src) &&
            const DeepCollectionEquality()
                .equals(other.earth_date, earth_date));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(img_src),
      const DeepCollectionEquality().hash(earth_date));

  @JsonKey(ignore: true)
  @override
  _$CuriosityModelCopyWith<_CuriosityModel> get copyWith =>
      __$CuriosityModelCopyWithImpl<_CuriosityModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CuriosityModelToJson(this);
  }
}

abstract class _CuriosityModel implements CuriosityModel {
  const factory _CuriosityModel(
      {required int id,
      required String img_src,
      required String earth_date}) = _$_CuriosityModel;

  factory _CuriosityModel.fromJson(Map<String, dynamic> json) =
      _$_CuriosityModel.fromJson;

  @override
  int get id;
  @override
  String get img_src;
  @override
  String get earth_date;
  @override
  @JsonKey(ignore: true)
  _$CuriosityModelCopyWith<_CuriosityModel> get copyWith =>
      throw _privateConstructorUsedError;
}
