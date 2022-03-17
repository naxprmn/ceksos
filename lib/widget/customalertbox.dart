import 'package:flutter/material.dart';

alertBox({required String title, required String desription}) {
  return Builder(builder: (context) {
    return AlertDialog(
      title: Text(title),
      content: Text(desription),
      actions: <Widget>[
        TextButton(
          onPressed: () => Navigator.pop(context, 'OK'),
          child: const Text('OK'),
        ),
      ],
    );
  });
}
