import 'dart:io';

int readInt() {
  try {
    return int.parse(stdin.readLineSync()!);
  } catch (e) {
    print(e);
    rethrow;
  }
}

int encode(String str, List<int> encodeList) {
  List<int> strCodeUnits = str.codeUnits.map((e) => e - 65).toList();
  int result = 0;
  int position = 1;
  strCodeUnits.forEach((c) {
    result += encodeList[c] * position;
    position *= 10;
  });
  return result;
}

List<int> readIntlist() {
  String input = stdin.readLineSync()!;
  return input
      .split(" ")
      .map<int>(
        (e) => int.parse(e),
      )
      .toList();
}
