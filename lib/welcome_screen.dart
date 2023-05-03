import 'package:flutter/material.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
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
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, 'login_screen');
                  },
                  style: ElevatedButton.styleFrom(
                    elevation: 12.0,
                    textStyle: const TextStyle(color: Colors.green),
                  ), child: const Text('Login'),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, 'registration_screen');
                  },
                  style: ElevatedButton.styleFrom(
                    elevation: 12.0,
                    textStyle: const TextStyle(color: Colors.blueAccent),
                  ), child: const Text('Register'),
                ),
              ]),
        ));
  }
}