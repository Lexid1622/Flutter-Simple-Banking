import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Saving extends StatefulWidget {
  const Saving({super.key});

  @override
  _Saving createState() => _Saving();
}

class _Saving extends State<Saving> {
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
        child: Container(
            height: 200,
            decoration: const BoxDecoration(
              gradient:
              LinearGradient(colors: [Colors.red, Colors.lightGreen]),
              borderRadius: BorderRadius.all(Radius.circular(20)),
            ),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    'Total in Savings',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 30),
                  ),
                  Text(
                    '\$500.45',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 50),
                  ),
                  //ElevatedButton(onPressed: onPressed, child: child)
                ],
              ),
            )),
      ),
      bottomNavigationBar: BottomAppBar(
        color: CupertinoColors.darkBackgroundGray,
        shape: const CircularNotchedRectangle(),
        child: Container(height: 50.0),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => setState(() {Navigator.pushNamed(context, 'home_screen');}),
        tooltip: 'Increment Counter',
        child: const Icon(Icons.arrow_back),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
