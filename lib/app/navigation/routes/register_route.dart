import 'package:tms_todo/app/navigation/routes/app_route.dart';

class RegisterRoute extends AppRoute {
  static const _routeName = 'register';
  static const _routePath = '/register';
  static const _relativePath = 'register';

  @override
  final String relativePath;

  RegisterRoute.child({required String rootRouteName, required String rootRoutePath})
    : relativePath = _relativePath,
      super(routeName: rootRouteName + _routeName, routePath: rootRoutePath + _routePath);
}
