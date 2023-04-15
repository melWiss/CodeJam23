import 'dart:io';

import '../../shared.dart';

void main() {
  int t, n;
  t = readInt();
  for (int i = 0; i < t; i++) {
    String dString = stdin.readLineSync()!;
    List<int> dInt = dString
        .split(" ")
        .map<int>(
          (e) => int.parse(e),
        )
        .toList();
    n = readInt();
    Map<int, String> indexMap = {};
    bool result = true;
    while (n-- != 0) {
      String word = stdin.readLineSync()!;
      int encoded = encode(word, dInt);
      if (indexMap.containsKey(encoded)) {
        result = false;
      } else {
        indexMap[encoded] = word;
      }
    }
    print("Case #${i + 1}: ${!result ? 'YES' : 'NO'}");
  }
}
