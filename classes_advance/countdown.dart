Future<void> main() async {
  await countdown(5);
  print('done');
}

Future<void> countdown(int num) async {
  for (var i = num; i >= 0; i--) {
    print(i);
    // print(i);
    await Future.delayed(
      Duration(seconds: 1),
    );
  }
}
