import 'package:ceksos/constant/app_constant.dart';
import 'package:ceksos/presentation/widget/cardpencarian.dart';
import 'package:ceksos/provider/global_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class FormNIK extends ConsumerWidget {
  const FormNIK({Key? key}) : super(key: key);

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
            child: YourCardWidget(
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
                  controller.getBantuan(value);
                },
              ),
              widgetButton: ElevatedButton(
                onPressed: () async {
                  controller.getBantuan(nik.text);
                },
                child: const Text(AppConstant.buttonSearch),
              ),
            ),
          ),
          const Divider(),
        ],
      ),
    );
  }
}
