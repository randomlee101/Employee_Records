import 'package:flutter/cupertino.dart';

class AdminSignUp{
  TextEditingController firstName;
  TextEditingController lastName;
  TextEditingController gender;
  TextEditingController dateOfBirth;
  TextEditingController passportPhotoUrl;
  TextEditingController address;
  TextEditingController country;
  TextEditingController state;

  void printText()
  {
    print(firstName.text);
  }

}