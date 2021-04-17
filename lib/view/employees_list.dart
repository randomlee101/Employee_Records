import 'package:employee_app/controller/create_employee.dart';
import 'package:employee_app/model/employee_model.dart';
import 'package:employee_app/view/create_employee.dart';
import 'package:flutter/material.dart';

class EmployeesList extends StatefulWidget {
  @override
  _EmployeesListState createState() => _EmployeesListState();
}

class _EmployeesListState extends State<EmployeesList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Employees'),),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.push(context, new MaterialPageRoute(builder: (context) => new CreateEmployee()));
        },
        child: Icon(Icons.add),
      ),
      body: FutureBuilder<List<Map<String, dynamic>>>(
        future: getAllEmployees(),
        builder: (context, snapshot) {

          while(!snapshot.hasData)
            {
              return Center(child: CircularProgressIndicator(),);
            }

          return ListView.builder(itemCount: snapshot.data.length,itemBuilder: (context, index) => ListTile(title: Text(snapshot.data[index]['firstname']+" "+snapshot.data[index]['lastname']), subtitle: snapshot.data[index]['designation'],));
        }
      ),
    );
  }
}
