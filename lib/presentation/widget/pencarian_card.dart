import 'package:flutter/material.dart';

class PencarianCard extends StatelessWidget {
  final String cardTitle;
  final String cardSubTitle;
  final Widget widgetUtama;
  final Widget widgetButton;

  const PencarianCard(
      {Key? key,
      required this.cardTitle,
      required this.cardSubTitle,
      required this.widgetButton,
      required this.widgetUtama})
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
            leading: const Icon(Icons.arrow_drop_down_circle),
            title: Text(cardTitle),
            subtitle: Text(
              cardSubTitle,
              style: TextStyle(color: Colors.black.withOpacity(0.6)),
            ),
          ),
          Padding(padding: const EdgeInsets.all(8.0), child: widgetUtama),
          ButtonBar(
            alignment: MainAxisAlignment.start,
            children: [widgetButton],
          ),
        ],
      ),
    );
  }
}
