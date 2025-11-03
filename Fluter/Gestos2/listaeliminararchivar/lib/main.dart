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
      home: const MyHomePage(title: 'Silvia Garcia Bouza'),
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
  int _counter = 0;
  List<String> listNames = [
    'a',
    'b',
    'c',
    'd',
    'e',
    'f',
    'g',
    'h',
    'a',
    'b',
    'c',
    'd',
    'e',
    'f',
    'g',
    'h',
    'a',
    'b',
    'c',
    'd',
    'e',
    'f',
    'g',
    'h',
    'a',
    'b',
    'c',
    'd',
    'e',
    'f',
    'g',
    'h',
  ];

  List<String> listArchive = [];

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void removeName(int id) {
    setState(() {
      listNames.removeAt(id);
    });
  }

  void archiveName(int id) {
    setState(() {
      listArchive.add(listNames[id]);
      listNames.removeAt(id);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: ListView.builder(
          itemCount: listNames.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Dismissible(
                key: ValueKey(listNames[index] + index.toString()),

                direction: DismissDirection.horizontal,
                background: Container(
                  color: Colors.yellow,
                  child: Row(
                    children: [
                      SizedBox(width: 8.0),
                      Icon(Icons.archive),
                      SizedBox(width: 8.0),
                      Text('Archivar'),
                    ],
                  ),
                ),

                secondaryBackground: Container(
                  color: Colors.red,
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,

                      children: [
                        Icon(Icons.delete),
                        SizedBox(width: 8.0),
                        Text('Eliminar'),
                        SizedBox(width: 8.0),
                      ],
                    ),
                  ),
                ),

                onDismissed: (direction) {
                  final int originalIndex = index;
                  final String itemToRestore = listNames[index];
                  if (direction == DismissDirection.startToEnd) {
                    archiveName(index);
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text('Elemento archivado'),
                        duration: Duration(seconds: 8),
                        action: SnackBarAction(
                          label: 'DESHACER',
                          textColor: Colors.yellow,
                          onPressed: () {
                            setState(() {
                              listNames.insert(originalIndex, itemToRestore);
                              listArchive.remove(itemToRestore);
                            });
                          },
                        ),
                      ),
                    );
                  } else {
                    removeName(index);
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text('Elemento eliminado'),
                        duration: Duration(seconds: 8),
                        action: SnackBarAction(
                          label: 'DESHACER',
                          textColor: Colors.red,
                          onPressed: () {
                            setState(() {
                              listNames.insert(originalIndex, itemToRestore);
                            });
                          },
                        ),
                      ),
                    );
                  }
                },

                child: Row(
                  children: [Icon(Icons.person), Text(listNames[index])],
                ),
              ),
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
