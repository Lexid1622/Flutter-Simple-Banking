//import 'dart:js';

//import 'dart:js';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test5/saving_transaction.dart';
//import 'package:test5/checking.dart';
//import 'package:test5/saving_transaction.dart';
//import 'globals.dart';

class HomeScreen extends StatefulWidget {
  //static late List<savings> savings;
  double savings1;

  HomeScreen({super.key, required this.savings1});

  @override
  _HomeScreen createState() => _HomeScreen();
/*
  const HomeScreen({
    Key? key,
    required this.savings,
}):super(key: key);*/
  
}

class _HomeScreen extends State<HomeScreen> {
  

  @override
  Widget build(BuildContext context) {
    /*void goToSavingTransaction(){
      Navigator.of(context).push(MaterialPageRoute(
          builder: (context){
            return const SavingsTransaction();
          }
      )).then((valueFromTextField){
        // use your valueFromTextField from the second page
        num contextHolder=context as num;
        assets= contextHolder+assets;
      });
    }*/
    widget.savings1= 500.65;
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
                    '\$ ${widget.savings1}',
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
              onPressed: () => setState(() {Navigator.pushNamed(context, 'checking_screen');}), child: const Text('Checking Account'),
            ),
            ElevatedButton (
              onPressed: () => setState(() {Navigator.pushNamed(context, 'saving_screen');}), child: const Text('Savings Account'),
            ),
            ElevatedButton (
                onPressed: () =>
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                    builder: (context) => SavingsTransaction(savings2: widget.savings1),
                    )
                  ), child: const Text('saving deposit'),
                //Navigator.pushNamed(context, 'saving_transaction_screen'),
                //Navigator.push(context, savings as Route<Object?>),
                //child: const Text('saving deposit'),,// );}), child: const Text('Saving Transaction'),
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


