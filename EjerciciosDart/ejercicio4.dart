/*
4) Constante PI y cálculo de área

Declara una constante `const` con el valor de PI (3.14159).

Lee un radio por consola y calcula el área del círculo (`PI * radio * radio`).

Incluye un comentario explicando por qué PI puede ser `const`.*/
import 'dart:io';

void main(List<String> args) {
  const PI = 3.142656;
  print('Escribe el radio: ');
  double radio = double.parse(stdin.readLineSync() ?? '0');
  print('${PI * radio * radio}');
  //Puede ser constante porque su valor no se modifica
}
