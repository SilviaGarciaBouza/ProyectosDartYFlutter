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
  List<String> my = [
    "1",
    "2",
    "3",
    "4",
    "1",
    "2",
    "3",
    "4",
    "1",
    "2",
    "3",
    "4",
  ];
  int currentId = 0;
  String currentNum = "";

  void eliminar(int index) {
    setState(() {
      my.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: ListView.builder(
        itemCount: my.length,
        itemBuilder: (context, index) {
          return Dismissible(
            key: ValueKey(index.toString() + my[index]),
            direction: DismissDirection.horizontal,
            background: Container(color: Colors.red),
            secondaryBackground: Container(color: Colors.blue),
            onDismissed: (direction) {
              if (direction == DismissDirection.endToStart) {
                currentNum = my[index];
                eliminar(index);
                currentId = index;
              } else {
                currentNum = my[index];
                eliminar(index);
                currentId = index;
              }
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text("De verdad quieres arquivar esa  tarea?"),
                  duration: Duration(seconds: 5),
                  action: SnackBarAction(
                    label: "deshacer",
                    onPressed: () => {
                      setState(() {
                        my.insert(currentId, currentNum);
                      }),
                    },
                  ),
                ),
              );
            },

            child: Text("${my[index]}"),
          );
        },
      ),
    );
  }
}
