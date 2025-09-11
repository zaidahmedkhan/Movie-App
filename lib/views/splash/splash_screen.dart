import 'package:flutter/material.dart';
import 'package:movie_app/services/splash/splash_services.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

SplashServices splashServices = SplashServices();

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    splashServices.isLogin(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: Center(child: Text("Splash Screen"))),
    );
  }
}
