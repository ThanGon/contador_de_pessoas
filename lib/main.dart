import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [Text ('Tchau Nathan!')],
      ),
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        title: Text ('Oi Nathan!'), 
      ), 
    );
  }
}











/*class HomePage extends StatelessWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white10,
        alignment: Alignment.center,
        child: const Text('Olá Mundo!'),
    );
  }
}*/ // Salvar para futura referência OLÁ MUNDO