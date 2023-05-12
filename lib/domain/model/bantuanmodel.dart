import 'package:freezed_annotation/freezed_annotation.dart';

part 'bantuanmodel.freezed.dart';
part 'bantuanmodel.g.dart';

@freezed
class BantuanModel with _$BantuanModel {
  factory BantuanModel(
      {required String id,
      required String nama,
      required String nik,
      required String bantuan,
      String? alamat}) = _BantuanModel;

  factory BantuanModel.fromJson(Map<String, dynamic> json) => _$BantuanModelFromJson(json);
}
