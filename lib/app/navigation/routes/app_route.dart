abstract class AppRoute {
  final String routeName;
  final String routePath;

  String get relativePath;

  const AppRoute({required this.routeName, required this.routePath});
}
