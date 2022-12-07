import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

void main() {
  runApp(const MyApp());
}

List<String> images = [
  "1.png",
  "GIF1.gif",
  "GIF2.gif",
  "GIF3.gif",
  "GIF4.gif",
  "GIF5.gif"
];

List<String> images1 = ["2.png", "gif6.gif", "gif7.gif"];

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Trabalho Prático',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const MyHomePage(
              title:
                  'Trabalho Prático - Matheus Costa Amboni e Sidnei De Souza Junior',
            ),
        '/bully': (context) => const Bully(),
        '/sequenciadormovel': (context) => const Sequenciador(),
        //'/sequenciadormovel': (context) => const SequenciadorMovel(),
      },
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
        title: Center(child: Text(widget.title)),
      ),
      body: Center(
          child: Center(
              child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            child: const Text('Algoritmo de Eleição - Algoritmo de Bully'),
            onPressed: () {
              Navigator.pushNamed(context, '/bully');
            },
          ),
          const SizedBox(
            height: 30,
          ),
          ElevatedButton(
            child: const Text('Sequenciador Móvel'),
            onPressed: () {
              Navigator.pushNamed(context, '/sequenciadormovel');
            },
          ),
        ],
      ))),
    );
  }
}

class Bully extends StatefulWidget {
  const Bully({super.key});

  @override
  State<Bully> createState() => BullyPageState();
}

class BullyPageState extends State<Bully> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Center(child: Text('Algoritmo de Bully')),
        ),
        body: Center(
          child: CarouselSlider.builder(
            itemCount: 6,
            itemBuilder:
                (BuildContext context, int itemIndex, int pageViewIndex) =>
                    Container(
                        margin: const EdgeInsets.all(10),
                        child: Image.asset(images[itemIndex])),
            options: CarouselOptions(),
          ),
        ));
  }
}

class Sequenciador extends StatefulWidget {
  const Sequenciador({super.key});

  @override
  State<Sequenciador> createState() => SequenciadorPageState();
}

class SequenciadorPageState extends State<Sequenciador> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Center(child: Text('Sequenciador Móvel')),
        ),
        body: Center(
          child: CarouselSlider.builder(
            itemCount: 3,
            itemBuilder:
                (BuildContext context, int itemIndex, int pageViewIndex) =>
                    Container(
                        margin: const EdgeInsets.all(10),
                        child: Image.asset(images1[itemIndex])),
            options: CarouselOptions(),
          ),
        ));
  }
}
