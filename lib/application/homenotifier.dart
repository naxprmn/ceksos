import 'package:ceksos/domain/model/bantuanmodel.dart';
import 'package:ceksos/domain/state/homestate.dart';
import 'package:ceksos/infrastuctures/databaseservices.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomeNotifier extends StateNotifier<Homestate> {
  HomeNotifier(this.service) : super(Homestate.initial());
  final DatabaseServices service;

  getBantuan(String nik) async {
    state = Homestate.loading();
    try {
      List response = await service.getBantuan(nik: nik);
      if (response.isNotEmpty) {
        List<BantuanModel> responseList = [];
        for (var element in response) {
          responseList.add(BantuanModel.fromJson(element));
        }
        state = Homestate.data(responseList);
      } else {
        state = Homestate.error('Tidak Ditemukan');
      }
    } catch (e) {
      state = Homestate.error(e.toString());
    }
  }
}
