/*9) Validación de PIN con `while`

Define un PIN correcto (por ejemplo, “1234”).

Permite hasta tres intentos mediante un bucle `while`.

Muestra “Acceso concedido” si acierta o “Cuenta bloqueada” tras tres errores.*/

import 'dart:io';

void main(List<String> args) {
  String pin = '1234';
  String myTryPin = ' ';
  int count = 0;
  while (count < 3 && pin != myTryPin) {
    print('Escribe un pin: ');
    myTryPin = stdin.readLineSync() ?? '';
    count++;
  }
  if (pin == myTryPin) {
    print('Acceso concedido');
  } else {
    print('Cuenta bloqueada');
  }
}
