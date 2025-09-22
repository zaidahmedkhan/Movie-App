import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:movie_app/config/routes/routes.dart';
import 'package:movie_app/config/routes/routes_names.dart';
import 'package:movie_app/repository/auth/login_repository.dart';

GetIt getIt = GetIt.instance;

void main() {
  serviceLocator();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      initialRoute: RoutesNames.splashScreen,
      onGenerateRoute: Routes.generateRoute,
    );
  }
}

void serviceLocator() {
  getIt.registerLazySingleton<LoginRepository>(() => LoginRepository());
}
