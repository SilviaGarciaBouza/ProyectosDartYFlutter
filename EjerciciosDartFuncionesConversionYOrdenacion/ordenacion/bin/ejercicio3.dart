String numberWeight(String num) {
  List<String> numberString = num.trim().split(RegExp('\\s+'));
  StringBuffer sb = StringBuffer();
  numberString.forEach(
    (e) => (int.tryParse(e) == null) ? sb.write('Error') : sb.write(''),
  );
  if (sb.toString().contains('Error'))
    return 'Error';
  else {
    List<int> numint = numberString.map((e) => int.parse(e)).toList();

    List<String> numWeight = numint
        .map((e) => e.toString().split('').reduce((a, b) => a + b))
        .toList();

    List<int> numWeigOrder = numWeight
        .map((e) => int.parse(e))
        .toList()
        .map(
          (e) => e.toString().split('').reduce((a, b) {
            if (int.parse(a) == int.parse(b)) {
              return a.toString().compareTo(b.toString()) < 0 ? a : b;
            } else if (int.parse(a) > int.parse(b)) {
              return a;
            } else {
              return b;
            }
          }),
        )
        .map((e) => int.parse(e))
        .toList();
    return numWeigOrder.join();
  }
}

void main() {
  print(numberWeight('56 65 74 100 99 68 86 180 90'));
  print(numberWeight('11 20 2'));
  print(numberWeight('56 65 74 '));

  print(numberWeight('a b c'));
  print(numberWeight('56.5 23'));
  print(numberWeight(''));
}
