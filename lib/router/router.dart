import 'package:auto_route/auto_route_annotations.dart';
import 'package:gsg_flutter_2/router/route-guard.dart';
import 'package:gsg_flutter_2/ui/page1.dart';
import 'package:gsg_flutter_2/ui/page2.dart';
import 'package:gsg_flutter_2/ui/page3.dart';

@MaterialAutoRouter(
  generateNavigationHelperExtension: true,
  routes: <AutoRoute>[
    // initial route is named "/"
    MaterialRoute(page: Page1, initial: true, name: 'page1Route'),
    MaterialRoute(page: Page2, name: 'page2Route', guards: [AuthGuard]),
    MaterialRoute(page: Page3, name: 'page3Route'),
  ],
)
class $CustomRouters {}
