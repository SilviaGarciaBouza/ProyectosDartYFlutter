import 'dart:mirrors';

String hexToRgb(String hexString) {
  List myHex = [];
  if (hexString.length == 7 &&
      hexString[0] == '#' &&
      int.tryParse(hexString.substring(1, 3), radix: 16) != null &&
      int.tryParse(hexString.substring(3, 5), radix: 16) != null &&
      int.tryParse(hexString.substring(5, 7), radix: 16) != null) {
    myHex.add(int.parse(hexString.substring(1, 3), radix: 16));
    myHex.add(int.parse(hexString.substring(3, 5), radix: 16));
    myHex.add(int.parse(hexString.substring(5, 7), radix: 16));

    return '{r: ${myHex[0]}, g:${myHex[1]}, b:${myHex[2]}}';
  } else {
    return '{Error: 0}';
  }
}

void main() {
  print(hexToRgb('#FFFFFF'));
  print(hexToRgb('#ff9933'));
  print(hexToRgb('#9400D3'));
  print(hexToRgb('#000000'));
  print(hexToRgb('FF9933'));
  print(hexToRgb('#FFF'));
  print(hexToRgb('#GGGGGG'));
  print(hexToRgb('#1234567'));
  print(hexToRgb(''));
  print(hexToRgb(' '));
}
