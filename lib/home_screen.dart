import 'dart:developer';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:test5/saving_transaction.dart';

// This page is the first screen a user will see once they log in.

class HomeScreen extends StatefulWidget {
  final num checkingNow;

  const HomeScreen({super.key, required this.checkingNow});

  @override
  _HomeScreen createState() => _HomeScreen();
}

class _HomeScreen extends State<HomeScreen> {
  List holder = [];
  late String carry = "";

  DatabaseReference databaseReference = FirebaseDatabase.instance
      .refFromURL("https://davisflutterbanking-default-rtdb.firebaseio.com/");

  //creates the record and sends it to the database
  createRecord() async {
    await databaseReference.set({
      "checking": widget.checkingNow.toString(),
    });
  }

  //gets checking value from database
  getChecking() {
    databaseReference.onValue.listen((DatabaseEvent event) {
      Object hold = event.snapshot.value.toString();
      holder.add(hold);
      log(holder.first);
      //var carry=int.parse(holder.first);
      //widget.checkingNow=carry;
      carry = widget.checkingNow.toString();
      log("carry is $carry");
    });
    return widget.checkingNow;
  }

  @override
  Widget build(BuildContext context) {
    createRecord();
    getChecking();
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.monetization_on),
        backgroundColor: CupertinoColors.darkBackgroundGray,
        title: const Text("Flutter Banking"),
        actions: [
          IconButton(
              onPressed: () => setState(() {
                    Navigator.pushNamed(context, 'contact');
                  }),
              icon: const Icon(Icons.contact_support))
        ],
      ),
      backgroundColor: Colors.white70,
      body: Padding(
          padding:
              const EdgeInsets.only(left: 20, top: 5, right: 20, bottom: 30),
          child: Column(
            children: <Widget>[
              Container(
                  height: 140,
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                        colors: [Colors.lightBlue, Colors.lightGreen]),
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'Total in Savings',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontSize: 40),
                        ),
                        Text(
                          carry.toString(),
                          style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontSize: 30),
                        ),
                      ],
                    ),
                  )),
              ElevatedButton(
                onPressed: () => setState(() {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              SavingsTransaction(data: widget.checkingNow)));
                }),
                child: const Text('Savings Transaction'),
              ),
              ElevatedButton(
                onPressed: () => setState(() {
                  Navigator.pushNamed(context, 'checking_screen');
                }),
                child: const Text('Checking Account'),
              ),
              ElevatedButton(
                onPressed: () => setState(() {
                  Navigator.pushNamed(context, 'saving_screen');
                }),
                child: const Text('Savings Account'),
              ),

            ],
          )),
      bottomNavigationBar: BottomAppBar(
        color: CupertinoColors.darkBackgroundGray,
        shape: const CircularNotchedRectangle(),
        child: Container(height: 50.0),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => setState(() {
          Navigator.pushNamed(context, 'welcome_screen');
        }),
        tooltip: 'Logout',
        child: const Icon(Icons.logout),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
