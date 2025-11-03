import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
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
  int counter = 0;
  Color bordeColor = Colors.black;

  void tap() {
    setState(() {
      counter++;
    });
  }

  void doubleTap() {
    setState(() {
      bordeColor = (bordeColor == Colors.black) ? Colors.yellow : Colors.black;
    });
  }

  void longPress() {
    setState(() {
      counter = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Center(child: Text('Silvia Garcia Bouza')),
      ),
      body: Center(
        child: GestureDetector(
          onTap: tap,
          onDoubleTap: doubleTap,
          onLongPress: longPress,
          child: Container(
            width: 200,
            height: 200,
            decoration: BoxDecoration(
              border: Border.all(color: bordeColor, width: 8.0),
              shape: BoxShape.circle,
            ),
            child: Center(
              child: Text('$counter', style: TextStyle(fontSize: 36)),
            ),
          ),
        ),
      ),
    );
  }
}
