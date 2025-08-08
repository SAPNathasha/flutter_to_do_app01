import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

//stateless
//materialApp
//scaffold
String? name = "Prabhavi";

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.blue,
          brightness: Brightness.dark,
        ),
      ),

      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(title: Text(name!), centerTitle: true),
          drawer: Column(
            children: [
              DrawerHeader(child: Text('Drawer')),
              ListTile(title: Text('Logout')),
            ],
          ),
          floatingActionButton: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              FloatingActionButton(onPressed: () {}, child: Icon(Icons.add)),
              SizedBox(height: 10.0),
              FloatingActionButton(onPressed: () {}, child: Icon(Icons.add)),
            ],
          ),

          bottomNavigationBar: NavigationBar(
            destinations: [
              NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
              NavigationDestination(icon: Icon(Icons.person), label: 'Profile'),
              NavigationDestination(icon: Icon(Icons.phone), label: 'phone'),
            ],
            onDestinationSelected: (value) {
              print(value);
            },
            selectedIndex: 0,
          ),
        ),
      ),
    );
  }
}
