class EmployeeModel
{
  int id;
  final String firstName;
  final String lastName;
  final String gender;
  final String designation;
  final String dateOfBirth;
  final String passportPhotoUrl;
  final String address;
  final String country;
  final String state;

  EmployeeModel({
    this.id,
    this.firstName,
    this.lastName,
    this.gender,
    this.designation,
    this.dateOfBirth,
    this.passportPhotoUrl,
    this.address,
    this.country,
    this.state});

  Map<String, dynamic> toMap()
  {
    var map = <String, dynamic>{
      "firstname": firstName,
      "lastname": lastName,
      "gender": gender,
      "designation": designation,
      "date_of_birth": dateOfBirth,
      "passport_url": passportPhotoUrl,
      "address": address,
      "country": country,
      "state": state
    };
    if (id != null) {
      map['_id'] = id;
    }
    return map;
  }

  factory EmployeeModel.fromMap(Map<String, dynamic> map)
  {
    return EmployeeModel(
        id: map['_id'] as int,
        firstName: map['firstname'] as String,
        lastName: map['lastname'] as String,
        gender: map['gender'] as String,
        designation: map['designation'] as String,
        dateOfBirth: map['date_of_birth'] as String,
        passportPhotoUrl: map['passport_url'] as String,
        address: map['address'] as String,
        country: map['country'] as String,
        state: map['state'] as String
    );
  }

}