class Country {
  final String name;
  final String code;

  Country({required this.name, required this.code});

  @override
  String toString() {
    return "$name ($code)";
  }

  factory Country.fromMap(Map<String, String> map) {
    return Country(
      name: map['name']!,
      code: map['code']!,
    );
  }

  Map<String, String> toMap() {
    return {
      'name': name,
      'code': code,
    };
  }
}
