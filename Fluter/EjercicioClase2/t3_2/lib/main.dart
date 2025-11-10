import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Curriculum',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Expanded(flex: 3, child: Icon(Icons.mobile_friendly)),
            Expanded(flex: 2, child: Icon(Icons.computer)),
            Expanded(flex: 2, child: Icon(Icons.mobile_friendly)),
            Expanded(flex: 3, child: Icon(Icons.computer)),
          ],
        ),
        backgroundColor: Colors.amber,
      ),
      body: ListView(children: [MyHeader()]),
    );
  }
}

class MyHeader extends StatelessWidget {
  const MyHeader({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          width: 100,
          height: 100,
          child: Image.asset("assets/img/i.png", fit: BoxFit.cover),
        ),

        Text(
          "Silvia García Bouza",
          style: TextStyle(fontSize: 24, fontStyle: FontStyle.italic),
        ),

        Text(
          "Desarrolladora multiplataforma",
          style: TextStyle(fontSize: 16, fontStyle: FontStyle.italic),
        ),
      ],
    );
  }
}




 /*
FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
      */