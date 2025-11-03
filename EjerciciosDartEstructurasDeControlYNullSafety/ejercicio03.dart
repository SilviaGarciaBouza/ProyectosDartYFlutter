/*3) Forzado de null safety con `!`

Declara una variable `int?` y asígnale un valor o déjala nula, que esta decisión sea aleatoria.

Usa `!` para forzar su uso como no nula y multiplícala por 2.

Ejecuta varias veces y observa el comportamiento del programa.*/

import 'dart:math';

void main(List<String> args) {
  int? num = (Random().nextInt(2) == 0) ? 1 : null;
  num! * 2;
}
