// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'register_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$RegisterState {

 EmailValidator get email; bool get isValid; PasswordValidator get password;
/// Create a copy of RegisterState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RegisterStateCopyWith<RegisterState> get copyWith => _$RegisterStateCopyWithImpl<RegisterState>(this as RegisterState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RegisterState&&(identical(other.email, email) || other.email == email)&&(identical(other.isValid, isValid) || other.isValid == isValid)&&(identical(other.password, password) || other.password == password));
}


@override
int get hashCode => Object.hash(runtimeType,email,isValid,password);

@override
String toString() {
  return 'RegisterState(email: $email, isValid: $isValid, password: $password)';
}


}

/// @nodoc
abstract mixin class $RegisterStateCopyWith<$Res>  {
  factory $RegisterStateCopyWith(RegisterState value, $Res Function(RegisterState) _then) = _$RegisterStateCopyWithImpl;
@useResult
$Res call({
 EmailValidator email, bool isValid, PasswordValidator password
});




}
/// @nodoc
class _$RegisterStateCopyWithImpl<$Res>
    implements $RegisterStateCopyWith<$Res> {
  _$RegisterStateCopyWithImpl(this._self, this._then);

  final RegisterState _self;
  final $Res Function(RegisterState) _then;

/// Create a copy of RegisterState
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


/// Adds pattern-matching-related methods to [RegisterState].
extension RegisterStatePatterns on RegisterState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( RegisterValidation value)?  validation,required TResult orElse(),}){
final _that = this;
switch (_that) {
case RegisterValidation() when validation != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( RegisterValidation value)  validation,}){
final _that = this;
switch (_that) {
case RegisterValidation():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( RegisterValidation value)?  validation,}){
final _that = this;
switch (_that) {
case RegisterValidation() when validation != null:
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
case RegisterValidation() when validation != null:
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
case RegisterValidation():
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
case RegisterValidation() when validation != null:
return validation(_that.email,_that.isValid,_that.password);case _:
  return null;

}
}

}

/// @nodoc


class RegisterValidation implements RegisterState {
  const RegisterValidation({this.email = const EmailValidator.pure(), this.isValid = false, this.password = const PasswordValidator.pure()});
  

@override@JsonKey() final  EmailValidator email;
@override@JsonKey() final  bool isValid;
@override@JsonKey() final  PasswordValidator password;

/// Create a copy of RegisterState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RegisterValidationCopyWith<RegisterValidation> get copyWith => _$RegisterValidationCopyWithImpl<RegisterValidation>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RegisterValidation&&(identical(other.email, email) || other.email == email)&&(identical(other.isValid, isValid) || other.isValid == isValid)&&(identical(other.password, password) || other.password == password));
}


@override
int get hashCode => Object.hash(runtimeType,email,isValid,password);

@override
String toString() {
  return 'RegisterState.validation(email: $email, isValid: $isValid, password: $password)';
}


}

/// @nodoc
abstract mixin class $RegisterValidationCopyWith<$Res> implements $RegisterStateCopyWith<$Res> {
  factory $RegisterValidationCopyWith(RegisterValidation value, $Res Function(RegisterValidation) _then) = _$RegisterValidationCopyWithImpl;
@override @useResult
$Res call({
 EmailValidator email, bool isValid, PasswordValidator password
});




}
/// @nodoc
class _$RegisterValidationCopyWithImpl<$Res>
    implements $RegisterValidationCopyWith<$Res> {
  _$RegisterValidationCopyWithImpl(this._self, this._then);

  final RegisterValidation _self;
  final $Res Function(RegisterValidation) _then;

/// Create a copy of RegisterState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? email = null,Object? isValid = null,Object? password = null,}) {
  return _then(RegisterValidation(
email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as EmailValidator,isValid: null == isValid ? _self.isValid : isValid // ignore: cast_nullable_to_non_nullable
as bool,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as PasswordValidator,
  ));
}


}

// dart format on
