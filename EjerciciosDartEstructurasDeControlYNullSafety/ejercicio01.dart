/*1) Operador null-aware `??`

Lee un número desde consola o deja la entrada vacía.

Usa `??` para asignar 0 si el valor leído es nulo o vacío.

Imprime el resultado final y el tipo de la variable.

*/

import 'dart:io';

void main(List<String> args) {
  int? num;
  print('Escribe un numero o deja la entrada vacía: ');
  num = int.tryParse(stdin.readLineSync() ?? '') ?? 0;
  print(num);
  print(num.runtimeType);
}
