import 'package:flutter/material.dart';

void main() => runApp(const FlatterTutorialApp());

class FlatterTutorialApp extends StatelessWidget {
  const FlatterTutorialApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "A Hello World App",
      home: Scaffold(
        appBar: AppBar(
          leading: Builder(
            builder: (BuildContext context) {
              return IconButton(
                  onPressed: () {
                    print("Click on Menu");
                  },
                  icon: const Icon(Icons.menu_rounded));
            },
          ),
          title: const Text("Hello World App"),
          actions: <Widget>[
            IconButton(
              icon: const Icon(Icons.account_balance_wallet_rounded),
              tooltip: "Wallet",
              onPressed: () {
                print("Click on Wallet");
              },
            ),
            IconButton(
              icon: const Icon(Icons.notifications_rounded),
              tooltip: "Notifications",
              onPressed: () {
                print("Click on Notifications");
              },
            ),
            IconButton(
              icon: const Icon(Icons.login_rounded),
              tooltip: "Login",
              onPressed: () {
                print("Click on Login");
              },
            )
          ],
          backgroundColor: Colors.grey[900],
        ),
        body: Container(
          color: Colors.grey[200],
          alignment: Alignment.center,
          child: const Text(
            "Hello, World!",
            style: TextStyle(fontSize: 42.0, fontWeight: FontWeight.bold, fontFamily: 'Alkalami'),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            print("Click on Action Button");
          },
          backgroundColor: Colors.grey[900],
          child: const Text(
            "+",
            style: TextStyle(fontSize: 30.0),
          ),
        ),
        backgroundColor: Colors.grey[100],
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Icon(Icons.home_rounded), label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(Icons.menu_rounded), label: "Menu"),
            BottomNavigationBarItem(
                icon: Icon(Icons.search_rounded), label: "Search")
          ],
        ),
      ),
    );
  }
}
