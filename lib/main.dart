import 'package:flutter/material.dart';
// import 'auxiliar.dart';

void main() {
  runApp(const MyApp());
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

void decrement() {
  print('Decrementado');
}

void increment() {
  print('Incrementado');
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        const Text(
          'Controle de entrada',
          style: TextStyle(
            fontSize: 40,
            color: Colors.green,
          ),
        ),
        const Padding(
          padding: EdgeInsets.all(28),
          child: Text(
            '0',
            style: TextStyle(
              fontSize: 80,
              color: Colors.green,
            )
          ),
        ),
        /*FloatingActionButton(onPressed: () { // Botão Flutuante Teste
          // ignore: avoid_print
          print('Working');
        }),*/
        Row (mainAxisAlignment: MainAxisAlignment.center,
          children: [
           TextButton(
            onPressed: decrement,
            style: TextButton.styleFrom(
              backgroundColor: Colors.blue,
              fixedSize: const Size(110,60),
              primary: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18),
              ),
            ),
            child: const Text('Saiu', style: TextStyle(
              fontSize: 26,
              color: Colors.lightGreen,
            )),
          ),
          const SizedBox(width: 32),
            TextButton(
            onPressed: increment,
            style: TextButton.styleFrom(
              backgroundColor: Colors.blue,
              fixedSize: const Size(110,60),
              primary: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18),
              ),
            ),
            child: const Text('Entrou', style: TextStyle(
              color: Colors.lightGreen,
              fontSize: 26,
            )),
          ),
        ]),
      ]),
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        title: const Text('Oi Nathan!',
            style: TextStyle(
              color: Colors.black,
            )),
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