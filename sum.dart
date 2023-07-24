void main() {
  print(sum([0, 1, 20, 3, 50, 295.24]));
}

String sum(List<double> numberList) {
  double sum = 0;

  for (double number in numberList) {
    sum += number;
  }

  return '${sum.toStringAsFixed(1)}';
}
