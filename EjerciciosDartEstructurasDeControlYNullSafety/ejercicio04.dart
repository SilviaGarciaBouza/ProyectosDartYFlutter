/*4) Operador de cascada `..`

Crea un objeto `StringBuffer` para construir un mensaje.

Usa el operador `..` para encadenar varios métodos como `write` y `writeln`.*/
void main(List<String> args) {
  StringBuffer word = StringBuffer()
    ..write('Hello ')
    ..writeln('Que, tal?')
    ..write('tu');
  print(word);
}
