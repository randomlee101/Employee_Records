import 'package:flutter/material.dart';

class CustomTextField extends StatefulWidget {
  @override
  _CustomTextFieldState createState() => _CustomTextFieldState();

  final TextEditingController textEditingController;
  final Function function;
  final String hintText;
  CustomTextField({@required this.textEditingController, this.function, this.hintText});
}

class _CustomTextFieldState extends State<CustomTextField> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 16),
      child: TextFormField(
        controller: widget.textEditingController,
        decoration: InputDecoration(
          hintText: widget.hintText,
          filled: true,
          focusedErrorBorder: OutlineInputBorder(
            borderSide: BorderSide.none
          ),
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide.none
          ),
          errorBorder: OutlineInputBorder(
              borderSide: BorderSide.none
          ),
          border: OutlineInputBorder(
            borderSide: BorderSide.none
          )
        ),
      ),
    );
  }
}


