import 'package:flutter/material.dart';
import 'login.dart';

import 'signup.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);
  static const routeName = '/welcome-screen';

  // final emailController = TextEditingController();
  // final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/anhnendienthoai.png'), fit: BoxFit.fill),
            ),
          ),
          Stack(children: [
            Positioned(
              bottom: 30,
              right: 0,
              left: 0,
              
            
            child: Container(
              
              
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Container(
                    height: 80,
                    width: 150,
                    padding: const EdgeInsets.only(top: 25, left: 10, right: 10),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.white,
                        side: const BorderSide(color: Colors.black, width: 4),
                      ),
                      onPressed: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const LoginScreen())),
                      child: const Text(
                        'LOG IN',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                            color: Colors.black),
                      ),
                    ),
                  ),
                  Container(
                    height: 80,
                    width: 150,
                    padding: const EdgeInsets.only(top: 25, left: 10, right: 10),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.black,
                        // side: const BorderSide(color: Colors.white, width: 2),
                      ),
                      onPressed: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const SignupScreen())),
                      child: const Text(
                        'REGISTER',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          
          ],),
         
             
         
        ],
      ),
    );
  }
}