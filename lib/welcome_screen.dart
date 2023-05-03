import 'package:flutter/cupertino.dart';
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
        appBar: AppBar(
          leading: const Icon(Icons.monetization_on),
            backgroundColor: CupertinoColors.darkBackgroundGray,
            title:const Text("Flutter Banking")
        ),
        backgroundColor: Colors.white70,
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
                    backgroundColor: Colors.black12,
                  ), child: const Text('Login'),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, 'registration_screen');
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black12,
                    elevation: 12.0,
                  ), child: const Text('Register'),
                ),
              ]),
        )
    );
  }
}