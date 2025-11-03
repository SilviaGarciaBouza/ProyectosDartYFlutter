/*9) Conjunto sin duplicados

Crea un `Set<String>` para almacenar varios nombres introducidos por consola.

Incluye nombres repetidos para comprobar el comportamiento del conjunto.

Muestra el tamaño final del set y los elementos ordenados alfabéticamente.*/

import 'dart:io';

void main(List<String> args) {
  Set<String> setNombres = {};
  print('Escribe un nombre: ');
  String nombre = stdin.readLineSync()!;
  setNombres.add(nombre);
  print('Escribe un nombre: ');
  nombre = stdin.readLineSync()!;
  setNombres.add(nombre);
  print('Escribe un nombre: ');
  nombre = stdin.readLineSync()!;
  setNombres.add(nombre);

  setNombres.add(nombre);
  print(setNombres.length);
  print(setNombres);
}
