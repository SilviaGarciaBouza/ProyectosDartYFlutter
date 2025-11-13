import 'dart:io';

void main() {
  //1) Saludo con tipo inferido
  var name;
  print("Escribe tu nombre: ");
  name = stdin.readLineSync();
  print("Hola, $name");
  //2) Variable dinámica
  dynamic num = 1;
  print(num.runtimeType);
  print("Escribe una palabra: ");
  num = stdin.readLineSync();
  print(num.runtimeType);
  //3) Uso de `final` con fecha actual
  final DateTime nowDate = DateTime.now();
  print(nowDate.day);
  print(nowDate.month);
  print(nowDate.year);
  // nowDate= DateTime.now(); solo puede definirse una vez
  //4) Constante PI y cálculo de área
  const PI = 3.1416;
  print("Escribe el radio: ");
  int radio = int.parse(stdin.readLineSync() ?? "0");
  print("area: ${PI * radio * radio}");
  //const puede ser una constante pq no cambia su valor
  //5) Operaciones aritméticas básicas
  print("Escribe un num: ");
  String num1 = stdin.readLineSync()!!;
  print("Escribe un num: ");
  String num2 = stdin.readLineSync()!!;
  if (int.tryParse(num1) == null || int.tryParse(num2) == null) {
    print("Error");
  } else {
    print("Multiplicacion netera: ${int.parse(num1) ~/ int.parse(num2)}");
  }
  //6) Redondeo de valores decimales
  print("escribe un numero decimal: ");
  double numDecimal = double.parse(stdin.readLineSync()!);
  print(numDecimal);
  print(numDecimal.runtimeType);//double
  print(numDecimal.toStringAsFixed(2));
  print(numDecimal.toStringAsFixed(2).runtimeType);//string
//7) Evaluación booleana
if(num==1){
  print("uno");
  }else{
    print("dos");
  }

  (num1==1)? print("uno") : print("dos");
  bool.tryParse(num2);
  //8) Lista de enteros
  print("indica el numero de elementos de la lista: ");
  int numList= int.parse(stdin.readLineSync()!);
  List<int> myList = List.empty();
  for(int i= 0; i<numList; i++){
print("num: ");
myList[i]=int.parse(stdin.readLineSync()!);
  }
//9) Conjunto sin duplicados

Set<String> mySet= Set();
mySet.add("a");
mySet.length;
myList.length;
mySet.toList().sort();
//10) Mapa de conteo de palabras

String sentence= "a b a d a c d g t r l l";
Map<String, int> myMap = Map();
List<String> myentenceKey= sentence.split(" ");



}



}
