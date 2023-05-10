import 'package:ceksos/domain/model/bantuanmodel.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'homestate.freezed.dart';

@freezed
class Homestate with _$Homestate {
  factory Homestate.initial() = _HomestateInitial;
  factory Homestate.loading() = _HomestateLoading;
  factory Homestate.error(String error) = _HomestateError;
  factory Homestate.data(BantuanModel data) = _HomestateData;
}
