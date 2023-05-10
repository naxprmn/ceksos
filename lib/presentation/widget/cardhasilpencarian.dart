import 'package:ceksos/domain/model/bantuanmodel.dart';
import 'package:flutter/material.dart';

class YourCardDetails extends StatelessWidget {
  final String cardTitle;
  final String cardSubTitle;
  //getting data as Map
  final BantuanModel elm;

  const YourCardDetails({Key? key, required this.cardTitle, required this.cardSubTitle, required this.elm})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
            leading: const Icon(Icons.account_box),
            title: Text(cardTitle),
            subtitle: Text(
              cardSubTitle,
              style: TextStyle(color: Colors.black.withOpacity(0.6)),
            ),
          ),
          // ListView.builder(
          //   padding: EdgeInsets.zero,
          //   shrinkWrap: true,
          //   itemBuilder: (context, index) {
          //     //build view from Map to listTile
          //     String key = elm.keys.elementAt(index);
          //     if ("${elm[key]}" == "null") {
          //       return SizedBox();
          //     }
          //     return ListTile(
          //       title: Text(key),
          //       subtitle: Text("${elm[key]}"),
          //     );
          //   },
          //   itemCount: elm.length,
          // ),
        ],
      ),
    );
  }
}
