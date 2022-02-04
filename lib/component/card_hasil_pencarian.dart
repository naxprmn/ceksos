import 'package:flutter/material.dart';

class YourCardDetails extends StatelessWidget {
  final String cardTitle;
  final String cardSubTitle;
  final Map elm;

  const YourCardDetails(
      {Key? key,
      required this.cardTitle,
      required this.cardSubTitle,
      required this.elm})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      clipBehavior: Clip.antiAlias,
      child: Column(
        children: [
          ListTile(
            leading: const Icon(Icons.account_box),
            title: Text(cardTitle),
            subtitle: Text(
              cardSubTitle,
              style: TextStyle(color: Colors.black.withOpacity(0.6)),
            ),
          ),
          ListView.builder(
            shrinkWrap: true,
            itemBuilder: (context, index) {
              String key = elm.keys.elementAt(index);
              return Column(
                children: <Widget>[
                  ListTile(
                    title: Text(key),
                    subtitle: Text("${elm[key]}"),
                  ),
                ],
              );
            },
            itemCount: elm.length,
          ),
        ],
      ),
    );
  }
}
