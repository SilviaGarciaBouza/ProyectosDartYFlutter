/*1) Saludo con tipo inferido

Declara una variable con `var` para guardar el nombre del usuario.

Lee el nombre desde consola e imprime un mensaje con el siguiente formato: “Hola, nombre_introducido”.

Añade un comentario indicando qué tipo infirió Dart automáticamente.*/

import 'dart:io';

void main(List<String> args) {
  var userName;
  print('Escribe tu nombre de usuarios: ');
  userName = stdin.readLineSync();
  print('Hola, $userName');
}
