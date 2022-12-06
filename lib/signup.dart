
import 'package:my_first_app/register.dart';

import 'welcome.dart';
import 'package:flutter/material.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({Key? key}) : super(key: key);
  static const routeName = '/signup-screen';
  // static const String _title = 'Sign Up Screen';
  // final emailController = TextEditingController();
  // final passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      // title: _title,
      home: Scaffold(
        // appBar: AppBar(title: const Text(_title)),
        body: MyStatefulWidget(),
      ),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            IconButton(
                padding: const EdgeInsets.fromLTRB(0.0, 50.0, 0.0, 20.0),
                onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const WelcomeScreen())),
                icon: const Icon(Icons.arrow_left_outlined),
                tooltip: 'back home',
                ),
            const Padding(
                padding: EdgeInsets.symmetric(vertical: 16.0),
                child: Text(
                  'Register',
                  style: TextStyle(
                    fontSize: 50,
                    fontWeight: FontWeight.w400,
                    
                  ),
                  
                )),
            Padding(
                padding: const EdgeInsets.fromLTRB(10, 5, 50, 10),
                child: TextFormField(
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Enter email:',
                  ),
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter email!';
                    }
                    return null;
                  },
                )),
            Padding(
                padding: const EdgeInsets.fromLTRB(10, 5, 50, 10),
                child: TextFormField(
                  obscureText: true,
                  decoration: const InputDecoration(
                    hintText: 'Enter password:',
                    border: OutlineInputBorder(),
                  ),
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter password';
                    }
                    return null;
                  },
                )),
                Padding(
                padding: const EdgeInsets.fromLTRB(10, 5, 50, 10),
                child: TextFormField(
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Confirm password:',
                  ),
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return 'Please Confirm password!';
                    }
                    return null;
                  },
                )),
                Padding(
                padding: const EdgeInsets.fromLTRB(10, 5, 5, 10),
                
                child: ElevatedButton(
                   onPressed: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Register())),
                  child: const Text(
                    'Next',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                       
                        ),
                        
                        
                  ),
                  style: ElevatedButton.styleFrom(
                      primary: Colors.black, minimumSize: const Size(700, 60)),
                ))
           
          ]),
    );
  }
}