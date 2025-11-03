/*3) Uso de `final` con fecha actual

Crea una variable `final` con el valor de la fecha actual.

Imprime el año, el mes y el día en formato legible, cada uno en una línea diferente.

Intenta reasignarla y comenta el motivo del error que aparece.*/

void main(List<String> args) {
  final currentDate = DateTime.now();
  print(currentDate.year);
  print(currentDate.month);
  print(currentDate.day);
  /*Intento reasignar
  currentDate = DateTime.now();
  Error: Can't assign to the final variable 'currentDate'.
  El valor de una variable final no se puede reasignar.  */
}
