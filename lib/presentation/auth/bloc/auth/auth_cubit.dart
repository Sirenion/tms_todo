import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tms_todo/domain/auth_service.dart';

part 'auth_state.dart';

part 'auth_cubit.freezed.dart';

class AuthCubit extends Cubit<AuthState> {
  final AuthService _authService;

  AuthCubit({required AuthService authService})
    : _authService = authService,
      super(const AuthState.initial());

  Future<void> signInWithEmailAndPassword(String email, String password) async {
    try {
      emit(const AuthState.loading());
      await _authService.signInWithEmailAndPassword(email, password);
      emit(AuthState.user(user: _authService.currentUser));
    } catch (e) {
      emit(AuthState.error(exception: e.toString()));
    }
  }

  Future<void> registerWithEmailAndPassword(String email, String password) async {
    try {
      emit(const AuthState.loading());
      await _authService.registerWithEmailAndPassword(email, password);
      emit(AuthState.user(user: _authService.currentUser));
    } catch (e) {
      emit(AuthState.error(exception: e.toString()));
    }
  }

  Future<void> logout() async {
    try {
      emit(const AuthState.loading());
      await _authService.signOut();
      emit(AuthState.user(user: _authService.currentUser));
    } catch (e) {
      emit(AuthState.error(exception: e.toString()));
    }
  }
}
