import 'package:bloc/bloc.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tms_todo/presentation/auth/validators/email_validator.dart';
import 'package:tms_todo/presentation/auth/validators/password_validator.dart';

part 'register_state.dart';

part 'register_cubit.freezed.dart';

class RegisterCubit extends Cubit<RegisterState> {
  RegisterCubit() : super(const RegisterState.validation());

  void onEmailChange(String value) {
    final email = EmailValidator.dirty(value);
    emit(state.copyWith(email: email, isValid: Formz.validate([email])));
  }

  void onPasswordChange(String value) {
    final password = PasswordValidator.dirty(value);
    emit(state.copyWith(password: password, isValid: Formz.validate([password])));
  }

  void onSubmit(Future<void> Function(String, String) submit) {
    final email = EmailValidator.dirty(state.email.value);
    final password = PasswordValidator.dirty(state.password.value);
    emit(
      state.copyWith(email: email, password: password, isValid: Formz.validate([email, password])),
    );
    if (state.isValid) {
      submit(email.value, password.value);
    }
  }
}
