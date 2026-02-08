import 'package:tms_todo/app/navigation/routes/app_route.dart';
import 'package:tms_todo/app/navigation/routes/register_route.dart';

class SignInRoute extends AppRoute {
  static const _routeName = 'sign_in';
  static const _routePath = '/sign_in';

  @override
  String get relativePath => routePath;

  late final register = RegisterRoute.child(rootRouteName: routeName, rootRoutePath: routePath);

  SignInRoute() : super(routeName: _routeName, routePath: _routePath);
}
