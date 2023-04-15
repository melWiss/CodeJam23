import 'dart:io';

import '../../shared.dart';

void main(List<String> args) {
  int t = readInt();
  for (var i = 0; i < t; i++) {
    var la = readIntlist();
    int m = la.first;
    int r = la[1];
    var Xs = readIntlist();
    List<int> highway = List<int>.filled(m + 1, 0);
    int y = 0;
    for (y = 0; y < Xs.length; y++) {
      if (highway.contains(0)) {
        int x = Xs[y];
        int start = x - r;
        int end = x + r;
        if (start < 0) start = 0;
        if (end >= m) end = m + 1;
        for (int j = start; j < end; j++) {
          highway[j] = 1;
        }
      } else {
        break;
      }
    }
    bool impossible = highway.contains(0);
    print(highway);
    print("Case #${i + 1}: ${impossible ? 'IMPOSSIBLE' : y}");
  }
}
