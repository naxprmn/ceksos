// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bantuanmodel.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BantuanModel _$BantuanModelFromJson(Map<String, dynamic> json) {
  return _BantuanModel.fromJson(json);
}

/// @nodoc
mixin _$BantuanModel {
  String get id => throw _privateConstructorUsedError;
  String get nama => throw _privateConstructorUsedError;
  String get bantuan => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BantuanModelCopyWith<BantuanModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BantuanModelCopyWith<$Res> {
  factory $BantuanModelCopyWith(
          BantuanModel value, $Res Function(BantuanModel) then) =
      _$BantuanModelCopyWithImpl<$Res, BantuanModel>;
  @useResult
  $Res call({String id, String nama, String bantuan});
}

/// @nodoc
class _$BantuanModelCopyWithImpl<$Res, $Val extends BantuanModel>
    implements $BantuanModelCopyWith<$Res> {
  _$BantuanModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? nama = null,
    Object? bantuan = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      nama: null == nama
          ? _value.nama
          : nama // ignore: cast_nullable_to_non_nullable
              as String,
      bantuan: null == bantuan
          ? _value.bantuan
          : bantuan // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_BantuanModelCopyWith<$Res>
    implements $BantuanModelCopyWith<$Res> {
  factory _$$_BantuanModelCopyWith(
          _$_BantuanModel value, $Res Function(_$_BantuanModel) then) =
      __$$_BantuanModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String nama, String bantuan});
}

/// @nodoc
class __$$_BantuanModelCopyWithImpl<$Res>
    extends _$BantuanModelCopyWithImpl<$Res, _$_BantuanModel>
    implements _$$_BantuanModelCopyWith<$Res> {
  __$$_BantuanModelCopyWithImpl(
      _$_BantuanModel _value, $Res Function(_$_BantuanModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? nama = null,
    Object? bantuan = null,
  }) {
    return _then(_$_BantuanModel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      nama: null == nama
          ? _value.nama
          : nama // ignore: cast_nullable_to_non_nullable
              as String,
      bantuan: null == bantuan
          ? _value.bantuan
          : bantuan // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BantuanModel implements _BantuanModel {
  _$_BantuanModel(
      {required this.id, required this.nama, required this.bantuan});

  factory _$_BantuanModel.fromJson(Map<String, dynamic> json) =>
      _$$_BantuanModelFromJson(json);

  @override
  final String id;
  @override
  final String nama;
  @override
  final String bantuan;

  @override
  String toString() {
    return 'BantuanModel(id: $id, nama: $nama, bantuan: $bantuan)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BantuanModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.nama, nama) || other.nama == nama) &&
            (identical(other.bantuan, bantuan) || other.bantuan == bantuan));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, nama, bantuan);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BantuanModelCopyWith<_$_BantuanModel> get copyWith =>
      __$$_BantuanModelCopyWithImpl<_$_BantuanModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BantuanModelToJson(
      this,
    );
  }
}

abstract class _BantuanModel implements BantuanModel {
  factory _BantuanModel(
      {required final String id,
      required final String nama,
      required final String bantuan}) = _$_BantuanModel;

  factory _BantuanModel.fromJson(Map<String, dynamic> json) =
      _$_BantuanModel.fromJson;

  @override
  String get id;
  @override
  String get nama;
  @override
  String get bantuan;
  @override
  @JsonKey(ignore: true)
  _$$_BantuanModelCopyWith<_$_BantuanModel> get copyWith =>
      throw _privateConstructorUsedError;
}
