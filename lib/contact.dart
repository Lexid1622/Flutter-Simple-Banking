import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//This code is for a fake contact page. No buttons can be pressed other than back.
class Contact extends StatefulWidget {
  const Contact({super.key});

  @override
  _Contact createState() => _Contact();
}

class _Contact extends State<Contact> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.monetization_on),
        backgroundColor: CupertinoColors.darkBackgroundGray,
        title: const Text("Contact Us"),
      ),
      backgroundColor: Colors.white70,
      body: Padding(
        padding: const EdgeInsets.only(left: 20, top: 5, right: 20, bottom: 30),
        child:Container(
            height: 200,
            decoration: const BoxDecoration(
              color: CupertinoColors.inactiveGray,
              borderRadius: BorderRadius.all(Radius.circular(20)),
            ),
            child:  Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'John B. Micheals',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 35),
                  ),
                  const Text(
                    '123 California',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 20),
                  ),
                  const Text(
                    '8:00 - 16:00',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 20),
                  ),
                  FilledButton.icon(onPressed:(){} , icon: const Icon(Icons.phone), label: const Text("Call 215-123-4567")),
                  FilledButton.icon(onPressed:(){} , icon: const Icon(Icons.email), label: const Text(""))
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
        tooltip: 'Back Button',
        child: const Icon(Icons.arrow_back),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
