/*6) Redondeo de valores decimales

Lee un número decimal (`double`) desde consola.

Imprime el valor original y el mismo número redondeado a dos decimales.

Muestra también el tipo de cada variable para comprobar la inferencia.*/
import 'dart:io';

void main(List<String> args) {
  print('Escribe un numero decimal: ');
  double num = double.parse(stdin.readLineSync()!);
  print(num);
  print(num.toStringAsFixed(2));
}
