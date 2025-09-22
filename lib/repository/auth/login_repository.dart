import 'package:movie_app/config/app_urls.dart';
import 'package:movie_app/data/network/network_services_api.dart';
import 'package:movie_app/model/newUser/new_user_model.dart';

class LoginRepository {
  final _api = NetworkServicesApi();

  Future<NewUserModel> loginApi(dynamic data) async {
    final response = await _api.postApi(AppUrls.loginApi, data);
    return NewUserModel.fromJson(response);
  }
}
