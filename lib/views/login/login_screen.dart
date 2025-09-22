import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_app/bloc/login_bloc.dart';
import 'package:movie_app/utils/enums.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  late LoginBloc _loginBloc;
  final emailFocusNode = FocusNode();
  final passwordFocusNode = FocusNode();
  final _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    _loginBloc = LoginBloc();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (_) => _loginBloc,
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                BlocBuilder<LoginBloc, LoginState>(
                  buildWhen: (current, previous) =>
                      current.email != previous.email,
                  builder: (context, state) {
                    return TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      focusNode: emailFocusNode,
                      decoration: InputDecoration(
                        hintText: 'Email',
                        border: OutlineInputBorder(),
                      ),
                      onChanged: (value) {
                        context.read<LoginBloc>().add(
                          EmailChanged(email: value),
                        );
                      },
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Enter email';
                        }
                        return null;
                      },
                      onFieldSubmitted: (value) {},
                    );
                  },
                ),
                const SizedBox(height: 20),
                BlocBuilder<LoginBloc, LoginState>(
                  buildWhen: (current, previous) =>
                      current.password != previous.password,
                  builder: (context, state) {
                    return TextFormField(
                      keyboardType: TextInputType.text,
                      focusNode: passwordFocusNode,
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: 'Password',
                        border: OutlineInputBorder(),
                      ),
                      onChanged: (value) {
                        context.read<LoginBloc>().add(
                          PasswordChanged(password: value),
                        );
                      },
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Enter password';
                        }
                        return null;
                      },
                      onFieldSubmitted: (value) {},
                    );
                  },
                ),
                const SizedBox(height: 50),
                BlocListener<LoginBloc, LoginState>(
                  listenWhen: (current, previous) =>
                      current.postApiStatus != previous.postApiStatus,
                  listener: (context, state) {
                    if (state.postApiStatus == PostApiStatus.failure) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text(state.error.toString())),
                      );
                    }
                    if (state.postApiStatus == PostApiStatus.success) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text("Login successful")),
                      );
                    }
                    if (state.postApiStatus == PostApiStatus.loading) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text("Submitting.......")),
                      );
                    }
                  },
                  child: BlocBuilder<LoginBloc, LoginState>(
                    buildWhen: (current, previous) =>
                        current.postApiStatus != previous.postApiStatus,
                    builder: (context, state) {
                      return ElevatedButton(
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            debugPrint("I am here ");
                            context.read<LoginBloc>().add(LoginApi());
                          }
                        },
                        child: state.postApiStatus == PostApiStatus.loading
                            ? CircularProgressIndicator()
                            : Text('Login'),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
