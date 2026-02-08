part of 'register_cubit.dart';

@freezed
abstract class RegisterState with _$RegisterState {
  const factory RegisterState.validation({
    @Default(EmailValidator.pure()) EmailValidator email,
    @Default(false) bool isValid,
    @Default(PasswordValidator.pure()) PasswordValidator password,
  }) = RegisterValidation;
}
