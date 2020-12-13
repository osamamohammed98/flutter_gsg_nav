import 'package:flutter/material.dart';
import 'package:gsg_flutter_2/ui/page2.dart';

class Page1 extends StatelessWidget {
  static String routeName = 'page1';
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Page1'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RaisedButton(
                child: Text('Go to screen 2'),
                onPressed: () {
                  Navigator.of(context).pushNamed('screen2',
                      arguments: {'name': 'wesam', 'age': 25});
                }),
            RaisedButton(
                child: Text('Go to screen 2'),
                onPressed: () {
                  Navigator.of(context).pushReplacementNamed(Page2.routeName);
                }),
          ],
        ),
      ),
    );
  }
}
