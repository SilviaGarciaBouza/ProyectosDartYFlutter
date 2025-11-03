/*8) Recorrido con `for-in`

Lee una lista de enteros en una sola línea, separados por espacios.

Recórrela con `for-in` e imprime solo los números pares.

Muestra también la suma total de los pares.*/

import 'dart:io';

void main(List<String> args) {
  List<int?> myList;
  print('Escribe la lista de enteros: ');
  myList = stdin
      .readLineSync()!
      .split(' ')
      .map((e) => int.tryParse(e))
      .toList();
  for (int? i in myList) {
    if (i != null && i % 2 == 0) {
      print(i);
    }
  }
}
