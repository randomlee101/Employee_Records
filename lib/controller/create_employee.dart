import 'package:employee_app/model/employee_model.dart';
import 'package:flutter/material.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

Future<Database> initDb() async
{
  // Get a location using getDatabasesPath
  var databasesPath = await getDatabasesPath();
  String path = join(databasesPath, 'employee.db');

  Database db = await openDatabase(path, version: 1,
      onCreate: (Database db, int version) async {
        var tableColumns =
            '(id integer primary key, firstname text, lastname text, gender text, designation text, date_of_birth text, passport_url text, address text, country text, state text)';
        await db.execute('create table employees $tableColumns');
      });

  return db;
}

Future<EmployeeModel> saveEmployee(EmployeeModel employeeModel) async {
  await initDb().then((value) async {
    employeeModel.id = await value.insert('employees', employeeModel.toMap());
  });

  return employeeModel;
}

Future<List<Map<String, dynamic>>> getAllEmployees() async {
  List<Map<String, dynamic>> employees;
  await initDb().then((value) async {
    employees = await value.query('employees');

  });

  if(employees.length > 0)
  {
    return employees;
  }
  else
  {
    return null;
  }
}
