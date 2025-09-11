import 'dart:async';

import 'package:flutter/material.dart';
import 'package:movie_app/config/routes/routes_names.dart';

class SplashServices {
  void isLogin(BuildContext context) {
    Timer(
      const Duration(seconds: 3),
      () => Navigator.pushNamedAndRemoveUntil(
        context,
        RoutesNames.loginhScreen,
        (route) => false,
      ),
    );
  }
}
