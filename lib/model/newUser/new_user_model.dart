import 'package:freezed_annotation/freezed_annotation.dart';

part 'new_user_model.freezed.dart';
part 'new_user_model.g.dart';

@freezed
abstract class NewUserModel with _$NewUserModel {
  const factory NewUserModel({
    @Default('') String token,
    @Default('') String error,
  }) = _NewUserModel;

  factory NewUserModel.fromJson(Map<String, dynamic> json) =>
      _$NewUserModelFromJson(json);
}