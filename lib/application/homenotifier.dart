import 'package:ceksos/domain/state/homestate.dart';
import 'package:ceksos/infrastuctures/databaseservices.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomeNotifier extends StateNotifier<Homestate> {
  HomeNotifier(this.service) : super(Homestate.initial());
  final DatabaseServices service;

  getBantuan(String nik) async {
    state = Homestate.loading();
    try {
      final response = await service.getBantuan(id: nik);
    } catch (e) {
      state = Homestate.error(e.toString());
    }
  }
}
