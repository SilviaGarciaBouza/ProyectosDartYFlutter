import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp(ti: "f"));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key, required this.ti});
  final String ti;
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
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.amber, title: Text("Ejercicios")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('You have pushed the button this many times:'),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
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

class MyText extends StatelessWidget {
  const MyText({super.key});
  @override
  Widget build(BuildContext context) {
    return Text(
      "Esto es un texto",
      style: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.bold,
        color: Colors.red,
      ),
    );
  }
}

class MyImage extends StatelessWidget {
  const MyImage({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset("/assert/img/i.png", width: 100, fit: BoxFit.cover),
        Image.network("", width: 100, fit: BoxFit.cover),
      ],
    );
  }
}

class MyRowColumn extends StatelessWidget {
  const MyRowColumn({super.key});
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Flexible(child: Text("data")),
            Expanded(child: Text("s"), flex: 5),
          ],
        ),
      ],
    );
  }
}

class MyContainerPadding extends StatelessWidget {
  const MyContainerPadding({super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16),
      child: Container(
        padding: EdgeInsets.only(bottom: 16),
        margin: EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: Colors.red,
          borderRadius: BorderRadius.circular(100),
        ),
        width: 100,
        height: 100,
      ),
    );
  }
}

class MyStack extends StatelessWidget {
  const MyStack({super.key});
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Text("sdsa"),
        Positioned(bottom: 0, top: 0, left: 0, right: 0, child: Text("sa")),
      ],
    );
  }
}

class MyElevatedButton extends StatefulWidget {
  const MyElevatedButton({super.key});

  @override
  State<MyElevatedButton> createState() => _MyElevatedButton();
}

class _MyElevatedButton extends State<MyElevatedButton> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: () => print("p"), child: Text("Aceptar"));
  }
}

class MyDropDownButton extends StatefulWidget {
  const MyDropDownButton({super.key});
  @override
  State<MyDropDownButton> createState() => _MyDropDownButton();
}

class _MyDropDownButton extends State<MyDropDownButton> {
  @override
  Widget build(BuildContext context) {
    String option = "A";
    return DropdownButton<String>(
      value: option,
      items: [
        "A",
        "B",
        "C",
      ].map((e) => DropdownMenuItem(value: e, child: Text(e))).toList(),
      onChanged: (valor) => print(valor),
    );
  }
}

class MyListView extends StatefulWidget {
  const MyListView({super.key});
  @override
  State<MyListView> createState() => _MyListView();
}

class _MyListView extends State<MyListView> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 5,
      itemBuilder: (context, index) {
        return ListTile(title: Text(index.toString()));
      },
    );
  }
}
