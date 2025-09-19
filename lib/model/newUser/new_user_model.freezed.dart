// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'new_user_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$NewUserModel {

 String get token; String get error;
/// Create a copy of NewUserModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NewUserModelCopyWith<NewUserModel> get copyWith => _$NewUserModelCopyWithImpl<NewUserModel>(this as NewUserModel, _$identity);

  /// Serializes this NewUserModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NewUserModel&&(identical(other.token, token) || other.token == token)&&(identical(other.error, error) || other.error == error));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,token,error);

@override
String toString() {
  return 'NewUserModel(token: $token, error: $error)';
}


}

/// @nodoc
abstract mixin class $NewUserModelCopyWith<$Res>  {
  factory $NewUserModelCopyWith(NewUserModel value, $Res Function(NewUserModel) _then) = _$NewUserModelCopyWithImpl;
@useResult
$Res call({
 String token, String error
});




}
/// @nodoc
class _$NewUserModelCopyWithImpl<$Res>
    implements $NewUserModelCopyWith<$Res> {
  _$NewUserModelCopyWithImpl(this._self, this._then);

  final NewUserModel _self;
  final $Res Function(NewUserModel) _then;

/// Create a copy of NewUserModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? token = null,Object? error = null,}) {
  return _then(_self.copyWith(
token: null == token ? _self.token : token // ignore: cast_nullable_to_non_nullable
as String,error: null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [NewUserModel].
extension NewUserModelPatterns on NewUserModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _NewUserModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _NewUserModel() when $default != null:
return $default(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _NewUserModel value)  $default,){
final _that = this;
switch (_that) {
case _NewUserModel():
return $default(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _NewUserModel value)?  $default,){
final _that = this;
switch (_that) {
case _NewUserModel() when $default != null:
return $default(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String token,  String error)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _NewUserModel() when $default != null:
return $default(_that.token,_that.error);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String token,  String error)  $default,) {final _that = this;
switch (_that) {
case _NewUserModel():
return $default(_that.token,_that.error);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String token,  String error)?  $default,) {final _that = this;
switch (_that) {
case _NewUserModel() when $default != null:
return $default(_that.token,_that.error);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _NewUserModel implements NewUserModel {
  const _NewUserModel({this.token = '', this.error = ''});
  factory _NewUserModel.fromJson(Map<String, dynamic> json) => _$NewUserModelFromJson(json);

@override@JsonKey() final  String token;
@override@JsonKey() final  String error;

/// Create a copy of NewUserModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NewUserModelCopyWith<_NewUserModel> get copyWith => __$NewUserModelCopyWithImpl<_NewUserModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$NewUserModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _NewUserModel&&(identical(other.token, token) || other.token == token)&&(identical(other.error, error) || other.error == error));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,token,error);

@override
String toString() {
  return 'NewUserModel(token: $token, error: $error)';
}


}

/// @nodoc
abstract mixin class _$NewUserModelCopyWith<$Res> implements $NewUserModelCopyWith<$Res> {
  factory _$NewUserModelCopyWith(_NewUserModel value, $Res Function(_NewUserModel) _then) = __$NewUserModelCopyWithImpl;
@override @useResult
$Res call({
 String token, String error
});




}
/// @nodoc
class __$NewUserModelCopyWithImpl<$Res>
    implements _$NewUserModelCopyWith<$Res> {
  __$NewUserModelCopyWithImpl(this._self, this._then);

  final _NewUserModel _self;
  final $Res Function(_NewUserModel) _then;

/// Create a copy of NewUserModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? token = null,Object? error = null,}) {
  return _then(_NewUserModel(
token: null == token ? _self.token : token // ignore: cast_nullable_to_non_nullable
as String,error: null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
