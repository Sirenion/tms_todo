import 'dart:async';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:tms_todo/app/navigation/routes/app_routes.dart';
import 'package:tms_todo/domain/auth_service.dart';
import 'package:tms_todo/presentation/auth/register_page.dart';
import 'package:tms_todo/presentation/auth/sign_in_page.dart';
import 'package:tms_todo/presentation/home_page.dart';

GoRouter createRouter({required AuthService authService}) {
  final appRoutes = AppRoutes();

  return GoRouter(
    initialLocation: appRoutes.signIn.routePath,
    refreshListenable: GoRouterRefreshStream(authService.authStateChanged),
    redirect: (context, state) {
      final fullPath = state.uri.path;
      final isAuthenticated = authService.isAuthenticated;

      final isAuthPath = fullPath.startsWith(appRoutes.signIn.routePath);

      if (!isAuthPath && !isAuthenticated) {
        return appRoutes.signIn.routePath;
      } else if (isAuthPath && isAuthenticated) {
        return appRoutes.home.routePath;
      }
      return null;
    },
    routes: [
      GoRoute(
        name: appRoutes.signIn.routeName,
        path: appRoutes.signIn.relativePath,
        builder: (context, state) {
          return SignInPage(route: appRoutes.signIn);
        },
        routes: [
          GoRoute(
            name: appRoutes.signIn.register.routeName,
            path: appRoutes.signIn.register.relativePath,
            builder: (context, state) {
              return const RegisterPage();
            },
          ),
        ],
      ),
      GoRoute(
        name: appRoutes.home.routeName,
        path: appRoutes.home.relativePath,
        builder: (context, state) {
          return const HomePage();
        },
      ),
    ],
  );
}

class GoRouterRefreshStream extends ChangeNotifier {
  late final StreamSubscription<dynamic> _subscription;

  GoRouterRefreshStream(Stream<dynamic> stream) {
    _subscription = stream.listen((_) => notifyListeners());
  }

  @override
  void dispose() {
    _subscription.cancel();
    super.dispose();
  }
}
