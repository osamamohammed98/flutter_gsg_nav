import 'package:flutter/material.dart';
import 'package:gsg_flutter_2/ui/page1.dart';
import 'package:gsg_flutter_2/ui/page2.dart';
import 'package:gsg_flutter_2/ui/page3.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      initialRoute: Page1.routeName,
      routes: {
        Page1.routeName: (context) => Page1(),
        Page2.routeName: (context) => Page2(),
        Page3.routeName: (context) => Page3(),
      },
      onGenerateRoute: (settings) {
        String routeName = settings.name;
        dynamic arguments = settings.arguments;
        switch (routeName) {
          case ('screen2'):
            return MaterialPageRoute(
              builder: (context) {
                return Page2(
                  name: arguments['name'],
                  age: arguments['age'],
                );
              },
            );
            break;
          case ('screen3'):
            return MaterialPageRoute(
              builder: (context) {
                return Page3(
                  name: arguments['name'],
                  age: arguments['age'],
                  address: arguments['addreess'],
                );
              },
            );
            break;
          default:
            return MaterialPageRoute(
              builder: (context) {
                return Scaffold(
                  body: Center(child: Text('Error')),
                );
              },
            );
        }
      },
      onUnknownRoute: (settings) {},
    );
  }
}
