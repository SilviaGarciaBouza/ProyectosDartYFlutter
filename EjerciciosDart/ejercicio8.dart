/*8) Lista de enteros

Lee un número que indique cuántos elementos tendrá la lista.

Solicita y guarda los valores en una `List<int>`.

Imprime el mínimo, el máximo y el promedio de los números introducidos. */

import 'dart:io';
import 'dart:math';

void main(List<String> args) {
  List<int> lista = [];
  print('Indica el numero de valores de la lista: ');
  int num = int.parse(stdin.readLineSync() ?? '0');
  for (int i = 0; i < num; i++) {
    print('Escribe un numero: ');
    int num2 = int.parse(stdin.readLineSync() ?? '0');
    lista.add(num2);
  }
  print(lista.reduce(min));
  print(lista.reduce(max));
  print('${lista.reduce((a, b) => a + b) / num}');
}
