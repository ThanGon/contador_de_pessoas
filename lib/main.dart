import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override 
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Container(
        color: Colors.white10,
        alignment: Alignment.center,
        child: const Text('Olá Mundo!!!'),
      ),
    );
  }
}