import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:gsg_flutter_2/router/router.gr.dart';
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
              ExtendedNavigator.root
                  .pushPage3Route(name: 'omar', address: 'gaza', age: 12);
            }),
      ),
    );
  }
}
