class EmailAddress {
  EmailAddress(this.email) {
    if (this.email.isEmpty) {
      throw FormatException("Email can't be empty.");
    } else if (!this.email.contains('@')) {
      throw FormatException("Email doesn't contains '@'");
    }
  }

  final String email;

  @override
  String toString() => email;
}

void main() {
  try {
    print(EmailAddress('me@example.com'));
    print(EmailAddress('example.com'));
    print(EmailAddress(''));
  } on FormatException catch (e) {
    print(e);
  }
}
