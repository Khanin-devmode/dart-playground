void main() {
  var list = <int>[1, 2, 3, 4];
  var odds = where(list, (x) => x % 2 != 0);
  print(odds);

  var isFive = firstWhere(list, (x) => x == 5, orElse: () => -1);
  print(isFive);
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

T firstWhere<T>(List<T> items, bool Function(T) f,
    {required T Function() orElse}) {
  for (var item in items) {
    if (f(item)) {
      return item;
    }
  }
  return orElse();
}
