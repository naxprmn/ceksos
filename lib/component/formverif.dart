import 'package:ceksos/component/card_hasil_pencarian.dart';
import 'package:ceksos/component/card_pencarian.dart';
import 'package:ceksos/controller/database_notifier.dart';
import 'package:ceksos/utils/name.dart';
import 'package:flutter/material.dart';

class FormWidget extends StatefulWidget {
  const FormWidget({Key? key}) : super(key: key);

  @override
  _FormWidgetState createState() => _FormWidgetState();
}

class _FormWidgetState extends State<FormWidget> {
  Map model = {};
  final TextEditingController nik = TextEditingController();
  final TextEditingController kk = TextEditingController();
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
          model.isEmpty
              ? const Text("Masukan Data")
              : YourCardDetails(
                  cardTitle: "Hasil Pencarian",
                  cardSubTitle: "Data Capil",
                  elm: model,
                )
        ],
      ),
    );
  }

  submitButton() async {
    if (_keyFormNik.currentState!.validate()) {
      var response = await DatabaseNotifier.sendHandlerNIK(nik.text);
      if (response.isNotEmpty) {
        model = response;
        setState(() {});
      }
    }
  }
}
