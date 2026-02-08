import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:tms_todo/app/navigation/routes/sign_in_route.dart';
import 'package:tms_todo/generated/l10n.dart';
import 'package:tms_todo/presentation/auth/bloc/auth/auth_cubit.dart';
import 'package:tms_todo/presentation/auth/bloc/sign_in/sign_in_cubit.dart';
import 'package:tms_todo/presentation/auth/validators/email_validator.dart';
import 'package:tms_todo/presentation/auth/validators/password_validator.dart';
import 'package:tms_todo/presentation/auth/widgets/divider.dart';
import 'package:tms_todo/presentation/auth/widgets/submit_button.dart';
import 'package:tms_todo/presentation/auth/widgets/text_field.dart';

class SignInPage extends StatelessWidget {
  final SignInRoute route;

  const SignInPage({required this.route, super.key});

  void showSnackBarMessage(String message, BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(message)));
    });
  }

  @override
  Widget build(BuildContext context) {
    bool isLoading = false;

    return BlocProvider(
      create: (context) => SignInCubit(),
      child: Scaffold(
        body: SafeArea(
          child: Padding(
            padding: const .all(15.0),
            child: BlocBuilder<AuthCubit, AuthState>(
              builder: (context, state) {
                state.when(
                  initial: () => isLoading = false,
                  loading: () => isLoading = true,
                  user: (user) {
                    isLoading = false;
                  },
                  error: (e) {
                    if (isLoading) {
                      isLoading = false;
                      showSnackBarMessage(e, context);
                    }
                  },
                );
                return Column(
                  mainAxisSize: .max,
                  mainAxisAlignment: .center,
                  children: [
                    Text(S.of(context).auth),
                    const SizedBox(height: 10.0),
                    BlocBuilder<SignInCubit, SignInState>(
                      builder: (context, state) {
                        return CustomTextField(
                          hintText: S.of(context).input_email,
                          isLoading: isLoading,
                          onChanged: (value) => context.read<SignInCubit>().onEmailChange(value),
                          errorWidget: switch (state.email.displayError) {
                            EmailValidationError.empty => ErrorText(
                              errorText: S.of(context).empty_email,
                            ),
                            _ => null,
                          },
                        );
                      },
                    ),
                    const SizedBox(height: 10.0),
                    BlocBuilder<SignInCubit, SignInState>(
                      builder: (context, state) {
                        return CustomTextField(
                          hintText: S.of(context).input_password,
                          isLoading: isLoading,
                          onChanged: (value) => context.read<SignInCubit>().onPasswordChange(value),
                          errorWidget: switch (state.password.displayError) {
                            PasswordValidationError.empty => ErrorText(
                              errorText: S.of(context).password_required,
                            ),
                            _ => null,
                          },
                        );
                      },
                    ),
                    const SizedBox(height: 10.0),
                    BlocBuilder<SignInCubit, SignInState>(
                      builder: (context, state) {
                        return SubmitButton(
                          isLoading: isLoading,
                          label: S.of(context).login,
                          callback: () {
                            context.read<SignInCubit>().onSubmit(
                              (email, password) => context
                                  .read<AuthCubit>()
                                  .signInWithEmailAndPassword(email, password),
                            );
                          },
                        );
                      },
                    ),
                    const SizedBox(height: 10.0),
                    const OrDivider(),
                    const SizedBox(height: 10.0),
                    SubmitButton(
                      isLoading: isLoading,
                      label: S.of(context).register,
                      callback: () {
                        context.push(route.register.routePath);
                      },
                    ),
                  ],
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
