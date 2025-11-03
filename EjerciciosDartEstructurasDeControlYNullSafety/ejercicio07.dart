/*7) Bucle `for` clásico

Lee un número entero `n`.

Usa un bucle `for` para imprimir la tabla del 7 hasta `n` filas.

Si `n <= 0`, muestra un mensaje de error y finaliza el programa.*/

import 'dart:io';

void main(List<String> args) {
  print('Escribe un numero: ');
  int num = int.tryParse(stdin.readLineSync() ?? '') ?? 0;

  if (num <= 0) {
    print('Error');
  } else {
    for (int i = 0; i <= num; i++) {
      print(num * i);
    }
  }
}
