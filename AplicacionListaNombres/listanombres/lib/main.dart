import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'List names',
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
  List<String> listNames = [
    'Ana',
    'Alfonso',
    'Silvia',
    'Angel',
    'Pablo',
    'Martin',
    'Nuria',
    'Alex',
    'Enmanuel',
    'Ian',
    'Victor',
    'Alejandro',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text('List names'),
      ),
      body: Center(
        child: ListView.builder(
          itemCount: listNames.length,
          itemBuilder: (context, index) {
            return Card(
              child: ListTile(
                title: Row(
                  children: [Icon(Icons.person), Text(listNames[index])],
                ),
              ),
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            listNames.add('Nueva persona');
          });
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
