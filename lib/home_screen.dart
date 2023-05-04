import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test5/checking.dart';
import 'package:test5/saving_transaction.dart';
import 'globals.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  _HomeScreen createState() => _HomeScreen();
}

class _HomeScreen extends State<HomeScreen> {

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
        child:
        Column(
          children: <Widget>[
            Container(
            height: 200,
            decoration: const BoxDecoration(
              gradient:
              LinearGradient(colors: [Colors.lightBlue, Colors.lightGreen]),
              borderRadius: BorderRadius.all(Radius.circular(20)),
            ),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children:   [
                  const Text(
                    'Total in Assets',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 30),
                  ),
                  Text(
                    '\$ $assets',
                    style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 50),
                  ),
                ],
              ),
            )
        ),
            ElevatedButton (
              onPressed: () => setState(() {Navigator.pushNamed(context, 'checking_screen');}), child: Text('Checking Account'),
            ),
            ElevatedButton (
              onPressed: () => const Checking(), child: const Text("Savings Account"),
            ),
            ElevatedButton (
              onPressed: () => const SavingsTransaction(), child: const Text("Savings Deposit"),
            ),
          ],
        )



      ),
      bottomNavigationBar: BottomAppBar(
        color: CupertinoColors.darkBackgroundGray,
        shape: const CircularNotchedRectangle(),
        child: Container(height: 50.0),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => setState(() {Navigator.pushNamed(context, 'welcome_screen');}),
        tooltip: 'Increment Counter',
        child: const Icon(Icons.logout),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
