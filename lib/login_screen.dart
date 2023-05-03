import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  _LoginScreen createState() => _LoginScreen();
}

class _LoginScreen extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Container(
                    margin: const EdgeInsets.all(25),
                    child: FilledButton(
                      child: const Text('SignUp', style: TextStyle(fontSize: 20.0),),
                      onPressed: () {},
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.all(25),
                    child: FilledButton(
                      onPressed: () {},
                      child: const Text('LogIn', style: TextStyle(fontSize: 20.0),),
                    ),
                  ),
                ]
              /*child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                TextButton(
                  focusColor: Colors.lightBlueAccent,
                  label: const Text('Log In'),
                  onPressed: () {
                    Navigator.pushNamed(context, 'login_screen');
                  },
                ),
                FloatingActionButton(
                    focusColor: Colors.blueAccent,
                    title: 'Register',
                    onPressed: () {
                      Navigator.pushNamed(context, 'registration_screen');
                    }),
              ]),*/
            )));

  }
}