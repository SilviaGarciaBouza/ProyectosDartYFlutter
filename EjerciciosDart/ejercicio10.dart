/*Crea un `Map<String, int>` para contar cuántas veces aparece cada palabra.

Lee una frase desde consola y divídela por espacios.

Imprime cada palabra junto con su frecuencia. Ejemplo:

Entrada: “hola hola adiós” → Salida: {hola: 2, adiós: 1}*/
import 'dart:io';

void main(List<String> args) {
  Map<String, int> map = {};
  print('Escribe una frase: ');
  String sentense = stdin.readLineSync()!.trim();
  List<String> words = sentense.split(' ');
  for (String word in words) {
    if (map.containsKey(word)) {
      map[word] = map[word]! + 1;
    } else {
      map[word] = 1;
    }
  }
  print(map);
}
