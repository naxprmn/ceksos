import 'package:ceksos/constant/app_constant.dart';
import 'package:ceksos/presentation/widget/pencarian_card.dart';
import 'package:ceksos/provider/global_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SearchBar extends ConsumerWidget {
  const SearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, ref) {
    final keyFormNik = GlobalKey<FormState>();
    final TextEditingController nik = TextEditingController();
    final controller = ref.read(homeController.notifier);
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        children: [
          Form(
            key: keyFormNik,
            child: PencarianCard(
              cardTitle: AppConstant.titlePencarianByNIK,
              cardSubTitle: AppConstant.subTitlePencarianByNIK,
              widgetUtama: TextFormField(
                maxLength: 16,
                controller: nik,
                validator: (value) {
                  if (value!.length != 16) {
                    return AppConstant.errorInputNik;
                  }
                  return null;
                },
                onFieldSubmitted: (value) {
                  if (keyFormNik.currentState!.validate()) {
                    controller.getBantuan(value);
                  }
                },
              ),
              widgetButton: ElevatedButton(
                onPressed: () async {
                  if (keyFormNik.currentState!.validate()) {
                    controller.getBantuan(nik.text);
                  }
                },
                child: const Text(AppConstant.buttonSearch),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
