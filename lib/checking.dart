import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Checking extends StatefulWidget {
  const Checking({super.key});

  @override
  _Checking createState() => _Checking();
}

class _Checking extends State<Checking> {

  @override
  void initState() {
    super.initState();
  }

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
                height: 518,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
                child: Center(
                  child: ListView(
                    children: const [
                      Text(
                        'Total in Checking',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            fontSize: 30),
                      ),
                      Text(
                        "256",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            fontSize: 50),
                      ),
                      //ElevatedButton(onPressed: onPressed, child: child)
                        ListTile(
                          leading: Icon(Icons.coffee),
                          title: Text("Starbucks"),
                          tileColor: Colors.white70,
                          subtitle: Text("\$2.75"),
                          shape: RoundedRectangleBorder(
                            side: BorderSide(color: Colors.black, width: 2),
                          ),
                        ),
                        ListTile(
                          leading: Icon(Icons.coffee),
                          title: Text("Amazon"),
                          tileColor: Colors.white70,
                          subtitle: Text("\$90.75"),
                          shape: RoundedRectangleBorder(
                            side: BorderSide(color: Colors.black, width: 2),
                          ),
                        ),
                        ListTile(
                          leading: Icon(Icons.coffee),
                          title: Text("Wendy's"),
                          tileColor: Colors.white70,
                          subtitle: Text("\$20.34"),
                          shape: RoundedRectangleBorder(
                            side: BorderSide(color: Colors.black, width: 2),
                          ),
                        ),
                        ListTile(
                          leading: Icon(Icons.coffee),
                          title: Text("Forever 21"),
                          tileColor: Colors.white70,
                          subtitle: Text("\$45.78"),
                          shape: RoundedRectangleBorder(
                            side: BorderSide(color: Colors.black, width: 2),
                          ),
                        ),
                        ListTile(
                          leading: Icon(Icons.coffee),
                          title: Text("Kindle"),
                          tileColor: Colors.white70,
                          subtitle: Text("\$11.56"),
                          shape: RoundedRectangleBorder(
                            side: BorderSide(color: Colors.black, width: 2),
                          ),
                    ),
                      ListTile(
                        leading: Icon(Icons.coffee),
                        title: Text("Online"),
                        tileColor: Colors.white70,
                        subtitle: Text("\$112.56"),
                        shape: RoundedRectangleBorder(
                          side: BorderSide(color: Colors.black, width: 2),
                        ),
                      ),
                      ListTile(
                        leading: Icon(Icons.coffee),
                        title: Text("Rent"),
                        tileColor: Colors.white70,
                        subtitle: Text("\$1768.56"),
                        shape: RoundedRectangleBorder(
                          side: BorderSide(color: Colors.black, width: 2),
                        ),
                      )
]
                  )
                )
            ),
          ]
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: CupertinoColors.darkBackgroundGray,
        shape: const CircularNotchedRectangle(),
        child: Container(height: 50.0),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => setState(() {Navigator.pushNamed(context, 'home_screen');}),
        tooltip: 'Back',
        child: const Icon(Icons.arrow_back),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
