import 'package:ceksos/presentation/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(const ProviderScope(child: MainApp()));
}

class MainApp extends StatelessWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Pandawarta',
        theme: ThemeData(
          useMaterial3: true,
          colorSchemeSeed: Colors.amber,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: const HomePage());
  }
}
