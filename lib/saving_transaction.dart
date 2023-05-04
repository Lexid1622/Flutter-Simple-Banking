import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'globals.dart';

class SavingsTransaction extends StatefulWidget {
  const SavingsTransaction({super.key});

  @override
  _SavingsTransaction createState() => _SavingsTransaction();
}


class _SavingsTransaction extends State<SavingsTransaction> {
  late num valueInput;
  bool showSpinner = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: const Icon(Icons.monetization_on),
          backgroundColor: CupertinoColors.darkBackgroundGray,
          title:const Text("Flutter Banking")
      ),
      backgroundColor: Colors.white70,
      body: ModalProgressHUD(
        inAsyncCall: showSpinner,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              TextField(
                  keyboardType: TextInputType.emailAddress,
                  textAlign: TextAlign.center,
                  onChanged: (value) {
                    valueInput = value as num;
                    //Do something with the user input.
                  },
                  ),
              const SizedBox(
                height: 8.0,
              ),
              const SizedBox(
                height: 24.0,
              ),
              ElevatedButton(
                onPressed: () async {
                  Navigator.pushNamed(context, 'home_screen');
                  assets = assets+valueInput;
                  setState(() {
                    showSpinner = true;
                  });
                  setState(() {
                    showSpinner = false;
                  });
                },
                style: ElevatedButton.styleFrom(
                  elevation: 12.0,
                  textStyle: const TextStyle(color: Colors.blueAccent),
                ), child: const Text('Log In'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}