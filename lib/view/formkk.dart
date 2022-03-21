import 'package:ceksos/models/hasilpencarian.dart';
import 'package:ceksos/widget/cardpencarian.dart';
import 'package:ceksos/controller/databasenotifier.dart';
import 'package:ceksos/utils/name.dart';
import 'package:flutter/material.dart';

class FormKK extends StatefulWidget {
  const FormKK({Key? key}) : super(key: key);

  @override
  _FormKKState createState() => _FormKKState();
}

class _FormKKState extends State<FormKK> {
  Map model = {};
  final TextEditingController kk = TextEditingController();
  final _keyFormkk = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        children: [
          Form(
            key: _keyFormkk,
            child: YourCardWidget(
              cardTitle: titlePencarianByKK,
              cardSubTitle: subTitlePencarianByKK,
              widgetUtama: TextFormField(
                maxLength: 16,
                controller: kk,
                validator: (value) {
                  if (value!.length != 16) {
                    return errorInputKk;
                  }
                },
                onFieldSubmitted: (value) {
                  submitButton();
                },
              ),
              widgetButton: ElevatedButton(
                onPressed: () async {
                  submitButton();
                },
                child: const Text(buttonSearch),
              ),
            ),
          ),
          const Divider(),
          // model.isEmpty
          //     ? const Text("Masukan Data")
          //     : YourCardDetails(
          //         cardTitle: "Hasil Pencarian",
          //         cardSubTitle: periodeDtks,
          //         elm: model,
          //       )
        ],
      ),
    );
  }

  submitButton() async {
    FocusScope.of(context).unfocus();
    if (_keyFormkk.currentState!.validate()) {
      ModelHasilPencarian hasil =
          await DatabaseNotifier.mulaiPencarianKK(kk: kk.text);
      model = hasil.toMap();
      setState(() {});
    }
  }
}
