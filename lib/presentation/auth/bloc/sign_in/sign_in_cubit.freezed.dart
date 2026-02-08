// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sign_in_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SignInState {

 EmailValidator get email; bool get isValid; PasswordValidator get password;
/// Create a copy of SignInState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SignInStateCopyWith<SignInState> get copyWith => _$SignInStateCopyWithImpl<SignInState>(this as SignInState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SignInState&&(identical(other.email, email) || other.email == email)&&(identical(other.isValid, isValid) || other.isValid == isValid)&&(identical(other.password, password) || other.password == password));
}


@override
int get hashCode => Object.hash(runtimeType,email,isValid,password);

@override
String toString() {
  return 'SignInState(email: $email, isValid: $isValid, password: $password)';
}


}

/// @nodoc
abstract mixin class $SignInStateCopyWith<$Res>  {
  factory $SignInStateCopyWith(SignInState value, $Res Function(SignInState) _then) = _$SignInStateCopyWithImpl;
@useResult
$Res call({
 EmailValidator email, bool isValid, PasswordValidator password
});




}
/// @nodoc
class _$SignInStateCopyWithImpl<$Res>
    implements $SignInStateCopyWith<$Res> {
  _$SignInStateCopyWithImpl(this._self, this._then);

  final SignInState _self;
  final $Res Function(SignInState) _then;

/// Create a copy of SignInState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? email = null,Object? isValid = null,Object? password = null,}) {
  return _then(_self.copyWith(
email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as EmailValidator,isValid: null == isValid ? _self.isValid : isValid // ignore: cast_nullable_to_non_nullable
as bool,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as PasswordValidator,
  ));
}

}


/// Adds pattern-matching-related methods to [SignInState].
extension SignInStatePatterns on SignInState {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( SignInValidation value)?  validation,required TResult orElse(),}){
final _that = this;
switch (_that) {
case SignInValidation() when validation != null:
return validation(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( SignInValidation value)  validation,}){
final _that = this;
switch (_that) {
case SignInValidation():
return validation(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( SignInValidation value)?  validation,}){
final _that = this;
switch (_that) {
case SignInValidation() when validation != null:
return validation(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( EmailValidator email,  bool isValid,  PasswordValidator password)?  validation,required TResult orElse(),}) {final _that = this;
switch (_that) {
case SignInValidation() when validation != null:
return validation(_that.email,_that.isValid,_that.password);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( EmailValidator email,  bool isValid,  PasswordValidator password)  validation,}) {final _that = this;
switch (_that) {
case SignInValidation():
return validation(_that.email,_that.isValid,_that.password);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( EmailValidator email,  bool isValid,  PasswordValidator password)?  validation,}) {final _that = this;
switch (_that) {
case SignInValidation() when validation != null:
return validation(_that.email,_that.isValid,_that.password);case _:
  return null;

}
}

}

/// @nodoc


class SignInValidation implements SignInState {
  const SignInValidation({this.email = const EmailValidator.pure(), this.isValid = false, this.password = const PasswordValidator.pure()});
  

@override@JsonKey() final  EmailValidator email;
@override@JsonKey() final  bool isValid;
@override@JsonKey() final  PasswordValidator password;

/// Create a copy of SignInState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SignInValidationCopyWith<SignInValidation> get copyWith => _$SignInValidationCopyWithImpl<SignInValidation>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SignInValidation&&(identical(other.email, email) || other.email == email)&&(identical(other.isValid, isValid) || other.isValid == isValid)&&(identical(other.password, password) || other.password == password));
}


@override
int get hashCode => Object.hash(runtimeType,email,isValid,password);

@override
String toString() {
  return 'SignInState.validation(email: $email, isValid: $isValid, password: $password)';
}


}

/// @nodoc
abstract mixin class $SignInValidationCopyWith<$Res> implements $SignInStateCopyWith<$Res> {
  factory $SignInValidationCopyWith(SignInValidation value, $Res Function(SignInValidation) _then) = _$SignInValidationCopyWithImpl;
@override @useResult
$Res call({
 EmailValidator email, bool isValid, PasswordValidator password
});




}
/// @nodoc
class _$SignInValidationCopyWithImpl<$Res>
    implements $SignInValidationCopyWith<$Res> {
  _$SignInValidationCopyWithImpl(this._self, this._then);

  final SignInValidation _self;
  final $Res Function(SignInValidation) _then;

/// Create a copy of SignInState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? email = null,Object? isValid = null,Object? password = null,}) {
  return _then(SignInValidation(
email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as EmailValidator,isValid: null == isValid ? _self.isValid : isValid // ignore: cast_nullable_to_non_nullable
as bool,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as PasswordValidator,
  ));
}


}

// dart format on
