import 'package:employee_app/controller/create_employee.dart';
import 'package:employee_app/model/employee_model.dart';
import 'package:employee_app/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';

class CreateEmployee extends StatefulWidget {
  @override
  _CreateEmployeeState createState() => _CreateEmployeeState();
}

class _CreateEmployeeState extends State<CreateEmployee> {
  TextEditingController firstName;
  TextEditingController lastName;
  TextEditingController gender;
  TextEditingController designation;
  TextEditingController dateOfBirth;
  TextEditingController passportPhotoUrl;
  TextEditingController address;
  TextEditingController country;
  TextEditingController state;

  void addEmployee() async
  {
    EmployeeModel employeeModel = new EmployeeModel(firstName: firstName.text, lastName: lastName.text, gender: gender.text, designation: designation.text, dateOfBirth: dateOfBirth.text, passportPhotoUrl: passportPhotoUrl.text, address: address.text, country: country.text, state: state.text);
    await saveEmployee(employeeModel).then((value) => print(value.id)).whenComplete(() => Navigator.pop(context));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Create Employee Record'),

      ),
      body: ListView(
        padding: EdgeInsets.symmetric(vertical: 32, horizontal: 24),
        children: [
          CustomTextField(textEditingController: firstName, hintText: 'First Name',),
          CustomTextField(textEditingController: lastName, hintText: 'Last Name',),
          CustomTextField(textEditingController: gender, hintText: 'Gender (M or F)',),
          CustomTextField(textEditingController: designation, hintText: 'Designation',),
          CustomTextField(textEditingController: dateOfBirth, hintText: 'Date of Birth',),
          CustomTextField(textEditingController: address, hintText: 'Address',),
          CustomTextField(textEditingController: country, hintText: 'Country',),
          CustomTextField(textEditingController: state, hintText: 'State',),
          ElevatedButton(onPressed: (){addEmployee();}, child: Text('Add Employee Record'))
        ],
      ),
    );
  }
}
