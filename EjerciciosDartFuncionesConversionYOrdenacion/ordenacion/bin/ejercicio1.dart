String rgbToHex(String textoRGB) {
  String hex = '0123456789ABCDEF';
  List listRGB = textoRGB.trim().split(RegExp('\\s+'));
  if (listRGB.length == 3 &&
      int.tryParse(listRGB[0]) != null &&
      int.tryParse(listRGB[1]) != null &&
      int.tryParse(listRGB[2]) != null) {
    return listRGB
        .map((e) => int.parse(e))
        .map((e) => (e > 255) ? 255 : e)
        .map((e) => (e < 0) ? 0 : e)
        .map((e) => hex[e ~/ 16] + hex[e % 16])
        .map((e) => (e.length == 1) ? '0$e' : e)
        .join();
  } else {
    return 'Error';
  }
}

void main() {
  print(rgbToHex('255 255 255'));
  print(rgbToHex('255 255 355'));
  print(rgbToHex('148 0 211'));
  print(rgbToHex('-10 150 260'));
  print(rgbToHex('255 255'));
  print(rgbToHex('a b c'));
  print(rgbToHex(''));
  print(rgbToHex('  '));
}
