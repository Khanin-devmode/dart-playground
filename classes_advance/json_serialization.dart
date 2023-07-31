class Person {
  Person({required this.name, required this.age});

  final String name;
  final int age;

  factory Person.fromJson(Map<String, Object> json) {
    final name = json['name'];
    final age = json['age'];
    if (name is String && age is int) {
      return Person(name: name, age: age);
    } else {
      throw UnsupportedError('name or age is invalid');
    }
  }

  Map<String, Object> toJson() {
    return {'name': name, 'age': age};
  }
}

void main() {
  List personsJson = [
    {'name': 'Khanin', 'age': 37},
    {'name': 'Kanokwan', 'age': 38},
  ];

  personsJson.forEach((personJson) {
    Person person = Person.fromJson(personJson);
    print(person.name);

    print(person.toJson());
  });
}
