void main() {
  final Person person1 = Person(name: 'Khanin', age: 37, height: 1.77);
  final Person person2 = Person(name: 'Kanokwan', age: 38, height: 1.60);

  print(person1.getDescription());
  print(person2.getDescription());

  final Restaurant restaurant1 = Restaurant(
    name: 'Pizza Company',
    cuisine: 'Pizzeria',
    ratings: [],
  );
  print(restaurant1.ratingCount);
  print(restaurant1.averageRating.toStringAsFixed(2));
}

class Person {
  Person({
    required this.name,
    required this.age,
    required this.height,
  });

  final String name;
  final int age;
  final double height;

  String getDescription() =>
      "My name is $name. I'm $age years old. I'm ${height.toStringAsFixed(2)} meters tall.";
}

class Restaurant {
  Restaurant({
    required this.name,
    required this.cuisine,
    required this.ratings,
  });

  final String name;
  final String cuisine;
  final List<double> ratings;

  int get ratingCount => ratings.length;
  double get averageRating {
    if (ratings.isNotEmpty) {
      return ratings.reduce((value, element) => value + element) / ratingCount;
    } else {
      return -1;
    }
  }
}
