Stream<String> asyncFizzBuzz() async* {
  bool isFizz(int num) => num % 3 == 0;
  bool isBuzz(int num) => num % 5 == 0;

  for (var i = 1; i <= 15; i++) {
    await Future.delayed(Duration(milliseconds: 500));

    if (isFizz(i) && isBuzz(i)) {
      yield 'fizz buzz';
    } else if (isFizz(i)) {
      yield 'fizz';
    } else if (isBuzz(i)) {
      yield 'buzz';
    } else {
      yield i.toString();
    }
  }
}

Future<void> main() async {
  print('Program starting');

  final stream = asyncFizzBuzz();

  await for (var value in stream) {
    print(value);
  }
}
