import 'package:flutter/material.dart';
import 'package:gsg_flutter_2/ui/page3.dart';

class Page2 extends StatelessWidget {
  static String routeName = 'page2';
  String name;
  int age;
  Page2({this.age, this.name});
  int x = 8;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Page2'),
      ),
      body: Center(
        child: RaisedButton(
            child: Text('Go to screen 3'),
            onPressed: () async {
              Navigator.of(context).pushNamed('screen3',
                  arguments: {'name': 'wesam', 'age': 25, 'address': 'gaza'});
            }),
      ),
    );
  }
}
