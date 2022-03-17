import 'package:ceksos/models/modelhasilpencarian.dart';
import 'package:ceksos/widget/cardhasilpencarian.dart';
import 'package:ceksos/widget/cardpencarian.dart';
import 'package:ceksos/controller/databasenotifier.dart';
import 'package:ceksos/utils/name.dart';
import 'package:flutter/material.dart';

class FormNIK extends StatefulWidget {
  const FormNIK({Key? key}) : super(key: key);

  @override
  _FormNIKState createState() => _FormNIKState();
}

class _FormNIKState extends State<FormNIK> {
  late ModelHasilPencarian pencarian;
  bool sudahcari = false;
  final TextEditingController nik = TextEditingController();
  final _keyFormNik = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        children: [
          Form(
            key: _keyFormNik,
            child: YourCardWidget(
              cardTitle: titlePencarianByNIK,
              cardSubTitle: subTitlePencarianByNIK,
              widgetUtama: TextFormField(
                maxLength: 16,
                controller: nik,
                validator: (value) {
                  if (value!.length != 16) {
                    return errorInputNik;
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
          sudahcari == false
              ? const Text("Masukan Data")
              : YourCardDetails(
                  cardTitle: "Hasil Pencarian",
                  cardSubTitle: periodeDtks,
                  elm: pencarian,
                )
        ],
      ),
    );
  }

  submitButton() async {
    FocusScope.of(context).unfocus();
    if (_keyFormNik.currentState!.validate()) {
      pencarian = await DatabaseNotifier.mulaiPencarianNIK(nik: nik.text);
      sudahcari = true;
      setState(() {});
    }
  }
}
