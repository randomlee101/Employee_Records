class Country
{
  final String name;
  final String code;
  final List<String> states;

  Country({this.name, this.code, this.states});

  factory Country.fromJSON(Map<String, dynamic> json)
  {
    return Country(
        name: json['name'] as String,
        code: json['code'] as String,
        states: json['states'] as List<String>
    );
  }
}