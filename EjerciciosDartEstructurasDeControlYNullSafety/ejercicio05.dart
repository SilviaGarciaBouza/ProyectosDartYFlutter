/*5) Clasificación por edad

Lee la edad de una persona desde consola.

Usa `if`, `else if` y `else` para clasificar: menor (edad < 18), adulto (18–64), senior (>= 65).

Imprime la categoría correspondiente.*/

import 'dart:io';

void main(List<String> args) {
  print('Edad: ');
  int edad = int.tryParse(stdin.readLineSync() ?? '') ?? 0;
  if (edad < 18) {
    print('menor');
  } else if (edad < 65) {
    print('adulto');
  } else {
    print('senior');
  }
}
