import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class Task {
  String title;
  bool isDone;
  Task({required this.title, required this.isDone});
}

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Task",
      theme: ThemeData(),
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
  void changeDone(int index) {
    setState(() {
      myListTasks[index].isDone = !myListTasks[index].isDone;
    });
  }

  void deleteTask(int index) {
    setState(() {
      myListTasks.removeAt(index);
    });
  }

  List<Task> myArchiveListTasks = [];

  List<Task> myListTasks = [
    Task(title: "Ir a la compra", isDone: false),
    Task(title: "Lavar la ropa", isDone: false),
    Task(title: "Terminar el trabajo con Alfonso y Leo", isDone: false),
    Task(title: "Ir a correos", isDone: false),
    Task(title: "Esperar a Ángel", isDone: false),
    Task(title: "Buscar a Sonia", isDone: false),
    Task(title: "Comprar el regalo de Ana", isDone: false),
    Task(title: "Reunión con Nuria, Alex y Martín", isDone: false),
  ];

  Task currentTask = Task(title: "Ir a la compra", isDone: false);
  int currentIndez = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Lista de tareas")),
        backgroundColor: Colors.red,
      ),
      body: Padding(
        padding: EdgeInsets.all(15.0),
        child: ListView.builder(
          itemCount: myListTasks.length,
          itemBuilder: (context, index) {
            return Dismissible(
              key: ValueKey(myListTasks[index].title),
              direction: DismissDirection.horizontal,
              background: Container(
                color: Colors.red,
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.only(left: 15.0),
                child: Row(
                  children: [
                    Flexible(child: Icon(Icons.archive)),
                    Flexible(child: Text("Archivar")),
                  ],
                ),
              ),
              secondaryBackground: Container(
                color: Colors.red,
                alignment: Alignment.centerRight,
                padding: EdgeInsets.only(right: 15.0),
                child: Row(
                  children: [
                    Flexible(child: Icon(Icons.archive)),
                    Flexible(child: Text("Archivar")),
                  ],
                ),
              ),

              onDismissed: (direction) {
                setState(() {
                  if (direction == DismissDirection.startToEnd) {
                    currentIndez = index;
                    currentTask = myListTasks[index];
                    myArchiveListTasks.add(myListTasks[index]);
                    myListTasks.removeAt(index);
                  } else {
                    currentIndez = index;
                    currentTask = myListTasks[index];
                    myArchiveListTasks.add(myListTasks[index]);
                    myListTasks.removeAt(index);
                  }
                });
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text("De verdad quieres arquivar esa  tarea?"),
                    duration: Duration(seconds: 5),
                    action: SnackBarAction(
                      label: "deshacer",
                      onPressed: () => {
                        setState(() {
                          myListTasks.insert(currentIndez, currentTask);
                          myArchiveListTasks.removeLast;
                        }),
                      },
                    ),
                  ),
                );
              },

              child: Card(
                child: Padding(
                  padding: EdgeInsets.all(15.0),
                  child: Row(
                    children: [
                      Expanded(child: Text(myListTasks[index].title), flex: 8),
                      Expanded(
                        flex: 1,
                        child: GestureDetector(
                          onTap: () => deleteTask(index),
                          child: Icon(Icons.delete),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: GestureDetector(
                          onTap: () => changeDone(index),
                          child: Icon(
                            Icons.done,
                            color: (myListTasks[index].isDone == true)
                                ? Colors.green
                                : Colors.red,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
