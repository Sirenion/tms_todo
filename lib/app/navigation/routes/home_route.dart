import 'package:tms_todo/app/navigation/routes/app_route.dart';

class HomeRoute extends AppRoute {
  static const _routeName = 'home';
  static const _routePath = '/home';

  @override
  String get relativePath => routePath;

  HomeRoute() : super(routeName: _routeName, routePath: _routePath);
}
