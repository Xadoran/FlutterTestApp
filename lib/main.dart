import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: Colors.teal, brightness: Brightness.dark),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Flutter Dark Theme Example"),
          centerTitle: true,
          backgroundColor: Colors.teal,
        ),
        floatingActionButton: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            FloatingActionButton(onPressed: () {}, child: Icon(Icons.add)),
            SizedBox(height: 10.0),
            FloatingActionButton(
              onPressed: () {},
              child: Icon(Icons.remove),
            )
          ],
        ),
        drawer: const Drawer(
          child: Column(
            children: [
              DrawerHeader(
                  decoration: BoxDecoration(color: Colors.teal),
                  child: Text("Header")),
              Text("Logout"),
            ],
          ),
        ),
        bottomNavigationBar: NavigationBar(
          destinations: const [
            NavigationDestination(icon: Icon(Icons.home), label: "Home"),
            NavigationDestination(icon: Icon(Icons.person), label: "Profile")
          ],
          onDestinationSelected: (int value) {
            print("Selected index: $value");
          },
          selectedIndex: 1,
        ),
      ),
    );
  }
}
