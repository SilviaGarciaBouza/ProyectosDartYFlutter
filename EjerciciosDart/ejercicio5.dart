/*5) Operaciones aritméticas básicas

Lee dos números enteros desde consola.

Muestra la suma, resta, producto, división real, división entera y el resto en líneas diferentes.

Si la entrada no es válida, muestra un mensaje de “Error” y finaliza el programa.*/

import 'dart:io';

void main(List<String> args) {
  int? num1;
  int? num2;

  print('Escribe un numero: ');
  num1 = int.tryParse(stdin.readLineSync() ?? '');
  if (num1 == null) {
    print('Error');
    return;
  } else {
    print('Escribe otro numero: ');
    num2 = int.tryParse(stdin.readLineSync() ?? '');
    if (num2 == null) {
      print('Error');
      return;
    } else {
      print('${num1! + num2!}');
      print('${num1 - num2}');
      print('${num1 * num2}');
      print('${num1 / num2}');
      print('${num1 ~/ num2}');
      print('${num1 % num2}');
    }
  }
}
