/*10) Juego de adivinanza con `do-while`

Genera un número secreto aleatorio entre 1 y 100.

Pide al usuario que lo adivine e indica si el intento es “Mayor” o “Menor”.

Cuenta el número de intentos y muestra el mensaje “Acertaste en X intentos!”.*/

import 'dart:io';
import 'dart:math';

void main(List<String> args) {
  int num = Random().nextInt(100) + 1;
  int num2 = -1;
  int count = 0;
  do {
    count++;
    print('Adivina: ');
    num2 = int.tryParse(stdin.readLineSync() ?? '') ?? 0;

    if (num2 < num) {
      print('Tu intento fue Menor');
    } else if (num2 > num) {
      print('Tu intento fue  MAyor');
    }
  } while (num2 != num);
  print('acertaste en $count intentos');
}
