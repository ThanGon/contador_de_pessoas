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
      debugShowCheckedModeBanner: false, // Lembrar de como tirar do modo debug
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> { // Aqui se deve montar o código da página ou o código do estado
int count = 0;


void decrement() {
  if (count != 0) {
      setState(() {
    count--;
  });
  }
}

void increment() {
    setState(() {
    count++;
  });
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container( 
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/party.jpeg'),
              fit: BoxFit.cover,
            ),
          ),
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        const Text(
          'Controle de entrada',
          style: TextStyle(
            fontSize: 40,
            color: Colors.blue,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(28),
          child: Text(
            count.toString(), 
            style: const TextStyle(
              fontSize: 80,
              color: Colors.blue,
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
              color: Colors.yellow,
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
              color: Colors.yellow,
              fontSize: 26,
            )),
          ),
        ]),
      ]),
      ),
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        title: const Text('Oi Nathan!',
            style: TextStyle(
              color: Colors.blue,
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