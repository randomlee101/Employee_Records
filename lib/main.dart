import 'package:flutter/material.dart';
import 'view/create_account.dart';

void main()
{
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CreateAccount(),
    );
  }
}
