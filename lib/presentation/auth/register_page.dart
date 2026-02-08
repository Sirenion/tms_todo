import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tms_todo/generated/l10n.dart';
import 'package:tms_todo/presentation/auth/bloc/auth/auth_cubit.dart';
import 'package:tms_todo/presentation/auth/bloc/register/register_cubit.dart';
import 'package:tms_todo/presentation/auth/validators/email_validator.dart';
import 'package:tms_todo/presentation/auth/validators/password_validator.dart';
import 'package:tms_todo/presentation/auth/widgets/submit_button.dart';
import 'package:tms_todo/presentation/auth/widgets/text_field.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  void showSnackBarMessage(String message, BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(message)));
    });
  }

  @override
  Widget build(BuildContext context) {
    bool isLoading = false;

    return BlocProvider(
      create: (context) => RegisterCubit(),
      child: Scaffold(
        appBar: AppBar(),
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
                    BlocBuilder<RegisterCubit, RegisterState>(
                      builder: (context, state) {
                        return CustomTextField(
                          hintText: S.of(context).input_email,
                          isLoading: isLoading,
                          onChanged: (value) => context.read<RegisterCubit>().onEmailChange(value),
                          errorWidget: switch (state.email.displayError) {
                            EmailValidationError.empty => ErrorText(
                              errorText: S.of(context).empty_email,
                            ),
                            EmailValidationError.invalid => ErrorText(
                              errorText: S.of(context).incorrect_email,
                            ),
                            _ => null,
                          },
                        );
                      },
                    ),
                    const SizedBox(height: 10.0),
                    BlocBuilder<RegisterCubit, RegisterState>(
                      builder: (context, state) {
                        return CustomTextField(
                          hintText: S.of(context).input_password,
                          isLoading: isLoading,
                          onChanged: (value) =>
                              context.read<RegisterCubit>().onPasswordChange(value),
                          errorWidget: switch (state.password.displayError) {
                            PasswordValidationError.empty => ErrorText(
                              errorText: S.of(context).password_required,
                            ),
                            PasswordValidationError.invalid => ErrorText(
                              errorText: S.of(context).incorrect_password,
                            ),
                            _ => null,
                          },
                        );
                      },
                    ),
                    const SizedBox(height: 10.0),
                    BlocBuilder<RegisterCubit, RegisterState>(
                      builder: (context, state) {
                        return SubmitButton(
                          isLoading: isLoading,
                          label: S.of(context).register,
                          callback: () {
                            context.read<RegisterCubit>().onSubmit(
                              (email, password) => context
                                  .read<AuthCubit>()
                                  .registerWithEmailAndPassword(email, password),
                            );
                          },
                        );
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
