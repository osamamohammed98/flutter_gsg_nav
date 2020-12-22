import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CustomTextField extends StatelessWidget {
  Function validateFun;
  Function saveFunction;
  String label;
  CustomTextField(
      {@required this.label,
      @required this.saveFunction,
      @required this.validateFun});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return TextFormField(
      validator: (newValue) => validateFun(newValue),
      onSaved: (newValue) => saveFunction(newValue),
      decoration: InputDecoration(
          labelText: label,
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(15))),
    );
  }
}
