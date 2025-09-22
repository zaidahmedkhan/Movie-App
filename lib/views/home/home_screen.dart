import 'package:flutter/material.dart';
import 'package:movie_app/config/routes/routes_names.dart';
import 'package:movie_app/services/storage/local_storage.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("HomeScreen"),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              LocalStorage localStorage = LocalStorage();
              localStorage.clearValue('token').then((value) {
                localStorage.clearValue('islogin').then((value) {
                  Navigator.pushNamed(context, RoutesNames.loginhScreen);
                });
              });
            },
            icon: Icon(Icons.logout),
          ),
        ],
      ),
    );
  }
}
