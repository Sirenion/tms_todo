import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:go_router/go_router.dart';
import 'package:tms_todo/domain/auth_service.dart';
import 'package:tms_todo/generated/l10n.dart';
import 'package:tms_todo/presentation/auth/bloc/auth/auth_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TodoApp extends StatelessWidget {
  final GoRouter router;
  final AuthService authService;

  const TodoApp({required this.router, required this.authService, super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AuthCubit(authService: authService),
      child: MaterialApp.router(
        title: 'TMS Todo',
        theme: ThemeData(colorScheme: .fromSeed(seedColor: Colors.deepPurple)),
        localizationsDelegates: const <LocalizationsDelegate<dynamic>>[
          S.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: S.delegate.supportedLocales,
        routerConfig: router,
      ),
    );
  }
}
