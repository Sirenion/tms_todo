part of 'auth_cubit.dart';

@freezed
abstract class AuthState with _$AuthState {
  const factory AuthState.initial() = AuthInitial;

  const factory AuthState.loading() = AuthLoading;

  const factory AuthState.user({User? user}) = AuthUser;

  const factory AuthState.error({required String exception}) = AuthError;
}
