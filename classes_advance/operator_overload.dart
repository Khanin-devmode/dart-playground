class Point {
  Point(this.x, this.y);
  final int x;
  final int y;

  @override
  String toString() {
    return 'Point($x, $y)';
  }

  @override
  bool operator ==(covariant Point other) {
    return x == other.x && y == other.y;
  }

  Point operator +(covariant Point other) {
    return Point(x + other.x, y + other.y);
  }

  Point operator *(covariant int multiplier) {
    return Point(x * multiplier, y * multiplier);
  }
}

void main() {
  final point1 = Point(0, 1);
  final point2 = Point(1, 0);

  print(point1 + point2);

  print(point1 * 5);
}
