import 'package:auto_route/auto_route.dart';
import 'package:gsg_flutter_2/router/router.gr.dart';

class AuthGuard extends RouteGuard {
  @override
  Future<bool> canNavigate(ExtendedNavigatorState navigator, String routeName,
      Object arguments) async {
    if (routeName == Routes.page2Route) {
      ExtendedNavigator.root
          .pushPage3Route(name: 'omar', address: 'gaza', age: 12);
    }
  }
}
