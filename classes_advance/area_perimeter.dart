import 'dart:math';

abstract class Shape {
  double get area;
  double get perimeter;

  void printValues() => print(
      'Shape area: ${area.toStringAsFixed(2)}, Shape perimeter: ${perimeter.toStringAsFixed(2)}');
}

class Square extends Shape {
  Square(this.side);

  final double side;
  @override
  double get area => side * side;

  @override
  double get perimeter => 4 * side;
}

class Circle extends Shape {
  Circle(this.radius);

  final double radius;

  @override
  double get area => pi * radius * radius;

  @override
  double get perimeter => 2 * pi * radius;
}

void main() {
  final shapes = <Shape>[Circle(12), Square(4), Circle(4), Square(8)];

  shapes.forEach((shape) => shape.printValues());
}
