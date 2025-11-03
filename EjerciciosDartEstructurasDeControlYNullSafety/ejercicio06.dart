/*6) Switch con pattern matching

Lee un día de la semana como texto (“lunes”, “sábado”, etc.).

Usa un `switch` con expresiones o patrones para distinguir entre días de venir al instituto y fin de semana.

Imprime “Instituto” o “Fin de semana” según corresponda.

*/

import 'dart:ffi';
import 'dart:io';

void main(List<String> args) {
  print('dia: ');
  String? dia = stdin.readLineSync();
  switch (dia!.trim().toLowerCase()) {
    case 'lunes':
      print('Instituto');
      break;
    case 'martes':
      print('Instituto');
      break;
    case 'miercoles':
      print('Instituto');
      break;
    case 'jueves':
      print('Instituto');
      break;
    case 'viernes':
      print('Instituto');
      break;
    case 'sabado':
      print('Fin de semana');
      break;
    case 'domingo':
      print('Fin de semana');
      break;
    default:
      print('Dia no valido');
  }
}
