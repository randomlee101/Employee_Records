import 'package:employee_app/controller/admin_signup_control.dart';
import 'package:employee_app/view/employees_list.dart';
import 'package:employee_app/widgets/custom_text_field.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CreateAccount extends StatefulWidget {
  @override
  _CreateAccountState createState() => _CreateAccountState();
}

AdminSignUp adminSignUp = new AdminSignUp();

class _CreateAccountState extends State<CreateAccount> {

  TextEditingController firstName;
  TextEditingController lastName;
  TextEditingController gender;
  TextEditingController dateOfBirth;
  TextEditingController passportPhotoUrl;
  TextEditingController address;
  TextEditingController country;
  TextEditingController state;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Create Account'),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 24, vertical: 32),
        children: [
          CustomTextField(textEditingController: firstName, hintText: 'First Name',),
          CustomTextField(textEditingController: lastName, hintText: 'Last Name',),
          CustomTextField(textEditingController: gender, hintText: 'Gender (M or F)',),
          CustomTextField(textEditingController: dateOfBirth, hintText: 'Date of Birth',),
          CustomTextField(textEditingController: address, hintText: 'Address',),
          CustomTextField(textEditingController: country, hintText: 'Country',),
          CustomTextField(textEditingController: state, hintText: 'State',),
          ElevatedButton(onPressed: (){
            Navigator.push(context, new MaterialPageRoute(builder: (context) => new EmployeesList()));
          }, child: Text('Sign Up'))
        ],
      )
    );
  }
}
