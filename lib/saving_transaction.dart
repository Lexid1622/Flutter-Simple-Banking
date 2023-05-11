//import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'home_screen.dart';
//import 'package:flutter/services.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
//import 'globals.dart';

class SavingsTransaction extends StatefulWidget {
  late final double savings2;
  SavingsTransaction({super.key, required this.savings2});

  @override
  _SavingsTransaction createState() => _SavingsTransaction();
}


class _SavingsTransaction extends State<SavingsTransaction> {
  double valueInput=0;
  bool showSpinner = false;

  //add number controller
  final TextEditingController _numEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: const Icon(Icons.monetization_on),
          backgroundColor: CupertinoColors.darkBackgroundGray,
          title: const Text("Flutter Banking")
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
                controller: _numEditingController,
                keyboardType: TextInputType.number,
                inputFormatters: <TextInputFormatter>[
                  FilteringTextInputFormatter.digitsOnly
                ],
                //controller: _numEditingController,
                obscureText: false,
                decoration: InputDecoration(
                  border: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(12.0),
                    ),
                  ),
                  labelText: 'Deposit',
                  labelStyle: TextStyle(
                      color: Colors.black.withOpacity(0.8)
                  ),
                ),
              ),
              const SizedBox(
                height: 8.0,
              ),
              const SizedBox(
                height: 24.0,
              ),
              ElevatedButton(
                onPressed: () async {
                  submit();
                },
                style: ElevatedButton.styleFrom(
                  elevation: 12.0,
                  textStyle: const TextStyle(color: Colors.blueAccent),
                ), child: const Text('Submit'),
              ),
            ],
          ),
        ),
      ),

    );
  }
  void submit(){
    widget.savings2+=int.parse(widget.savings2 as String);
    Navigator.pushNamed(context, 'home_screen');
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => HomeScreen(savings1: widget.savings2),
        )
    );
    setState(() {
      showSpinner = true;
    });
    setState(() {
      showSpinner = false;
    });
  }

}

