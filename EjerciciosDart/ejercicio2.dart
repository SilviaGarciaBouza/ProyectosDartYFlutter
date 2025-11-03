/*2) Variable dinámica

Declara una variable `dynamic` y asígnale primero un número entero.

Luego reasígnale un texto leído por consola (por ejemplo, “Dart”).

Imprime el tipo antes y después del cambio para observar la diferencia.*/

import 'dart:io';

void main(List<String> args) {
  dynamic variable = 2;
  print(variable.runtimeType);
  print('Esceribe un texto: ');
  variable = stdin.readLineSync();
  print(variable.runtimeType);
}
