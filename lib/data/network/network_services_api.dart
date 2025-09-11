import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:movie_app/data/exceptions/app_exceptions.dart';
import 'package:movie_app/data/network/base_api_services.dart';
import 'package:http/http.dart' as http;

class NetworkServicesApi implements BaseApiServices {
  @override
  Future<dynamic> getApi(String url) async {
    dynamic jsonResponse;

    try {
      final response = await http
          .get(Uri.parse(url))
          .timeout(const Duration(seconds: 50));

      jsonResponse = returnResponse(response);

      if (response.statusCode == 200) {}
    } on SocketException {
      throw NoInternetException("No Internet try again");
    } on TimeoutException {
      throw RequestTimeOutException("Time out try again");
    }

    return jsonResponse;
  }

  @override
  Future<dynamic> postApi(String url, var data) async {
    dynamic jsonResponse;

    try {
      final response = await http
          .post(Uri.parse(url), body: data)
          .timeout(const Duration(seconds: 50));

      jsonResponse = returnResponse(response);

      if (response.statusCode == 200) {}
    } on SocketException {
      throw NoInternetException("No Internet try again");
    } on TimeoutException {
      throw RequestTimeOutException("Time out try again");
    }

    return jsonResponse;
  }

  dynamic returnResponse(http.Response response) {
    switch (response) {
      case 200:
        dynamic jsonResponse = jsonDecode(response.body);
        return jsonResponse;
      case 500:
        throw Exception("Error communicating with server ");
    }
  }
}
