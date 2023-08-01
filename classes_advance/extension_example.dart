void main() {
  int num = 3;

  print(num.rangeTo(5));
}

extension on int {
  List<int> rangeTo(int other) {
    if (other < this) {
      return [];
    }

    var list = <int>[this];
    for (var i = this + 1; i <= other; i++) {
      list.add(i);
    }

    return list;
  }
}
