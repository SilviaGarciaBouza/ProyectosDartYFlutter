/*7) Evaluación booleana

Lee un valor booleano desde consola (“true” o “false”).

Si es `true`, imprime “Acceso permitido”; si es `false`, imprime “Acceso denegado”.

Controla que si el usuario introduce otra cosa, se muestre un mensaje de error, y que los valores a comparar sean booleanos y no strings.*/

import 'dart:io';

void main(List<String> args) {
  print('Escribe true or false: ');
  bool variable = bool.parse(stdin.readLineSync()!);
  if (variable) {
    print('Acceso permitido');
  } else {
    print('Acceso denegado');
  }
}
