import 'package:flutter/material.dart';

class Page3 extends StatelessWidget {
  static String routeName = 'page3';
  String name;
  int age;
  String address;
  Page3({this.name, this.address, this.age});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text(
            'My name is $name, I am $age years old and i live in $address'),
      ),
      body: Center(
        child: RaisedButton(
            child: Text('return to screen 2'),
            onPressed: () {
              Navigator.of(context).pop({'name': 'ahmed', 'age': 8});
            }),
      ),
    );
  }
}
