part of 'sign_in_cubit.dart';

@freezed
abstract class SignInState with _$SignInState {
  const factory SignInState.validation({
    @Default(EmailValidator.pure()) EmailValidator email,
    @Default(false) bool isValid,
    @Default(PasswordValidator.pure()) PasswordValidator password,
  }) = SignInValidation;
}
