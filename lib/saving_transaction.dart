import 'dart:developer';

import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test5/saving1.dart';

import 'home_screen.dart';

//This is the transaction page, that will reflect on the HomeScreen.

class SavingsTransaction extends StatefulWidget {
  final num data;
  const SavingsTransaction({super.key, required this.data});

  @override
  _SavingsTransaction createState() => _SavingsTransaction();
}

class _SavingsTransaction extends State<SavingsTransaction> {
  final textcontrol = TextEditingController();
  late num hold=0;

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    textcontrol.dispose();
    super.dispose();
  }
  DatabaseReference databaseReference = FirebaseDatabase.instance.refFromURL("https://davisflutterbanking-default-rtdb.firebaseio.com/");

  //creates the record and sends it to the database
  updateRecord(num number) async {
    await databaseReference.update({
      "checking": number.toString(),
    });
  }

//to check if text control was getting and holding variables
  /*printLatestValue() {
    log('Second text field: ${textcontrol.text}');
  }*/

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.monetization_on),
        backgroundColor: CupertinoColors.darkBackgroundGray,
        title: const Text("Flutter Banking"),
      ),
      backgroundColor: Colors.white70,
    body: Padding(
    padding: const EdgeInsets.only(left: 20, top: 5, right: 20, bottom: 30),
      child: Column(
        children: [
          const Text("Please enter a number to transfer to your savings! (Positive or negative)",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 25
          ),),
          TextField(
            controller: textcontrol,
          ),
          IconButton(
            iconSize: 70,
              onPressed:(){
            //printLatestValue();
            var num = int.parse(textcontrol.text);
            log("num from user is $num");
            //log("data widget is ${widget.data}");
            hold =widget.data+num;
            log("Savings is now {$hold}");
            updateRecord(hold);
          } , icon: const Icon(Icons.check) )
        ],
      ),
    ),
      bottomNavigationBar: BottomAppBar(
        color: CupertinoColors.darkBackgroundGray,
        shape: const CircularNotchedRectangle(),
        child: Container(height: 50.0),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => setState(() {
          Navigator.push(context, MaterialPageRoute(builder: (context)=> HomeScreen(checkingNow: hold)));}),
        tooltip: 'Back Button',
        child: const Icon(Icons.arrow_back),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
