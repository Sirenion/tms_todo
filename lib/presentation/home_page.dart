import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tms_todo/generated/l10n.dart';
import 'package:tms_todo/presentation/auth/bloc/auth/auth_cubit.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(S.of(context).home), centerTitle: true),
      body: SafeArea(
        child: Padding(
          padding: const .all(15.0),
          child: Center(
            child: Column(
              mainAxisSize: .max,
              mainAxisAlignment: .center,
              children: [
                ElevatedButton(
                  onPressed: context.read<AuthCubit>().logout,
                  child: Text(S.of(context).logout),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
