void main() {
  var list = <int>[1, 2, 3, 4];

  var odds = where(list, (x) => x % 2 != 0);

  print(odds);
}

List<T> where<T>(List<T> items, bool Function(T) f) {
  var results = <T>[];
  for (var item in items) {
    if (f(item)) {
      results.add(item);
    }
  }
  return results;
}
