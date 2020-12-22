import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:gsg_flutter_2/router/router.gr.dart';
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
                  // ExtendedNavigator.of(context).push(Routes.page2);
                  ExtendedNavigator.root.pushPage2Route(age: 12, name: 'shady');
                }),
          ],
        ),
      ),
    );
  }
}
