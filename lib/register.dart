import 'welcome.dart';
import 'package:flutter/material.dart';
import 'signup.dart';

class Register extends StatelessWidget {
  const Register({Key? key}) : super(key: key);
  static const routeName = '/register';
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
                        builder: (context) => const SignupScreen())),
                icon: const Icon(Icons.arrow_left_outlined),
                tooltip: 'back home',
                ),
            Center(
              child: const Padding(
                  padding: EdgeInsets.symmetric(vertical: 16.0),
                  child: Text(
                    'Chúc mừng bạn đã đăng kí thành công',
                    style: TextStyle(
                      fontSize: 50,
                      fontWeight: FontWeight.w700,
                      
                    ),
                    
                  )),
            ),
           
                
           
          ]),
    );
  }
}