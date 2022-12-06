import 'package:flutter/material.dart';
import 'package:my_first_app/register.dart';
import 'login.dart';
import 'signup.dart';

import 'welcome.dart';

void main() => runApp(const MyApp());

// void _incrementCounter() {
//     // setState(() {
//     // This call to setState tells the Flutter framework that something has
//     // changed in this State, which causes it to rerun the build method below
//     // so that the display can reflect the updated values. If we changed
//     // _counter without calling setState(), then the build method would not be
//     // called again, and so nothing would appear to happen.
//     _counter++;
//     print(_counter);
//     // });
//   }

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const WelcomeScreen(),
      routes: {
        WelcomeScreen.routeName: (context) => const WelcomeScreen(),
        SignupScreen.routeName: (context) => const SignupScreen(),
        LoginScreen.routeName: (context) => const LoginScreen(),
        Register.routeName:(context) => const Register(),
        //SignupScreenSS.routeName: (context) => const SignupScreenSS(),
      },
    );
  }
}