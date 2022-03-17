// import 'package:flutter/material.dart';

// class Parent extends StatefulWidget {
//   @override
//   State<StatefulWidget> createState() {
//     return ParentState();
//   }
// }

// class ParentState extends State<Parent> {
//   Color selectedColor = Colors.grey;

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: <Widget>[
//         Container(
//           color: selectedColor,
//           height: 200.0,
//         ),
//         ColorPicker(
//           onColorSelect: (Color color) {
//             setState(() {
//               selectedColor = color;
//             });
//           },
//         )
//       ],
//     );
//   }
// }

// class ColorPicker extends StatelessWidget {
//   const ColorPicker({required this.onColorSelect});

//   final ColorCallback onColorSelect;

//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       children: <Widget>[
//         RaisedButton(
//           child: Text('red'),
//           color: Colors.red,
//           onPressed: () {
//             onColorSelect(Colors.red);
//           },
//         ),
//         RaisedButton(
//           child: Text('green'),
//           color: Colors.green,
//           onPressed: () {
//             onColorSelect(Colors.green);
//           },
//         ),
//         RaisedButton(
//           child: Text('blue'),
//           color: Colors.blue,
//           onPressed: () {
//             onColorSelect(Colors.blue);
//           },
//         )
//       ],
//     );
//   }
// }

// typedef ColorCallback = void Function(Color color);
