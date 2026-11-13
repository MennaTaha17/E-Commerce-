import 'package:e_commerce/view/screens/sign_in_screen.dart';
import 'package:e_commerce/view/screens/sign_up_screen.dart';
import 'package:e_commerce/view/screens/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'E-Commerce',
      theme: ThemeData(
      ),
        routes: {
      SplashScreen.routeName: (context) => SplashScreen(),
          SignInScreen.routeName:(context) => SignInScreen(),
          SignUpScreen.routeName:(context) => SignUpScreen()
        },
      initialRoute: SignInScreen.routeName,
    );
  }
}
