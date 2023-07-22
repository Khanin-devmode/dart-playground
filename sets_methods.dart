void main() {
  const a = {1, 3};
  const b = {3, 5};

  // EXERCISE
  // final aDif = a.difference(b);
  // final bDift = b.difference(a);

  // final lastResult = aDif.union(bDift);

  // int sum = 0;

  final c = a.union(b).difference(a.intersection(b));

  int sum = 0;

  for (int num in c) {
    sum += num;
  }

  print(sum);
}
