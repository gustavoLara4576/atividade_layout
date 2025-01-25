import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'LAYoUT - GUSTAVO'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan.shade900,
        title: Text(
          widget.title,
          style: const TextStyle(
            fontFamily: 'horizon',
            fontSize: 40,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Row(
          children: [
            Expanded(
              flex: 2,
              child: Container(
                color: const Color.fromARGB(255, 0, 62, 71),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Center(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20.0),
                      child: FittedBox(
                        fit: BoxFit.fill,
                        child: Image.asset('imagemhorizon.jpg'),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Column(
                children: [
                  Expanded(
                    flex: 1,
                    child: Container(
                      decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 7, 71, 58),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.only(
                          top: 30,
                          left: 20,
                          right: 10,
                        ),
                        child: Text(
                          'Horizon Zero Dawn é meu jogo favorito. Ele é um rpg de ação pós-apocalíptico de mundo aberto desenvolvido pela Guerrilla Games.',
                          style: TextStyle(
                            color: Color.fromARGB(255, 210, 255, 246),
                            fontFamily: 'horizon',
                            fontWeight: FontWeight.bold,
                            fontSize: 24,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 76, 118, 110),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.only(
                          top: 30,
                          left: 20,
                          right: 10,
                        ),
                        child: Text(
                          'A imagem a esquerda é a capa do jogo e o estilo de fonte usado aqui foi criado por fãs para imitar o estilo utilizado na capa do game.',
                          style: TextStyle(
                            color: Color.fromARGB(255, 255, 255, 255),
                            fontFamily: 'horizon',
                            fontWeight: FontWeight.bold,
                            fontSize: 24,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
