import 'dart:async';

import 'package:flutter/material.dart';
import 'package:movie_app/config/routes/routes_names.dart';
import 'package:movie_app/services/session_manager/session_controller.dart';

class SplashServices {
  void isLogin(BuildContext context) {
    SessionController()
        .getUserFromPreference()
        .then((value) {
          if (SessionController().isLogin ?? false) {
            Timer(
              const Duration(seconds: 3),
              () => Navigator.pushNamedAndRemoveUntil(
                context,
                RoutesNames.homeScreen,
                (route) => false,
              ),
            );
          } else {
            Timer(
              const Duration(seconds: 3),
              () => Navigator.pushNamedAndRemoveUntil(
                context,
                RoutesNames.loginhScreen,
                (route) => false,
              ),
            );
          }
        })
        .onError((error, stackTrace) {
          Timer(
            const Duration(seconds: 3),
            () => Navigator.pushNamedAndRemoveUntil(
              context,
              RoutesNames.loginhScreen,
              (route) => false,
            ),
          );
        });
  }
}
