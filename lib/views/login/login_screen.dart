import 'package:flutter/material.dart';
import 'package:movie_app/model/newUser/new_user_model.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  NewUserModel newUserModel = NewUserModel();

  


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: SafeArea(child: Center(child: Text("Login Screen"))),
    );
  }
}
