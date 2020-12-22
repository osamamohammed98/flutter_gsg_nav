import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:gsg_flutter_2/form_ui/pages/form_page.dart';
import 'package:gsg_flutter_2/router/route-guard.dart';
import 'package:gsg_flutter_2/router/router.gr.dart';
import 'package:gsg_flutter_2/ui/page1.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: FormPage(),
    );
  }
}
