import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

//stateless
//materialApp
//scaffold

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

      home: Scaffold(
        appBar: AppBar(
          title: Text('Prabhavi Nathasha'),
          centerTitle: true,
          leading: Icon(Icons.person),
          actions: [Text('Contact me'), Icon(Icons.phone)],
          backgroundColor: const Color.fromARGB(255, 14, 63, 104),
        ),
      ),
    );
  }
}
