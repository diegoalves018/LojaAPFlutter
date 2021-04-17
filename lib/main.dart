import 'package:flutter/material.dart';
import 'package:loja_mobile/screens/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Loja A P',
      theme: ThemeData(
        primarySwatch: Colors.yellow,
        primaryColor: Color.fromARGB(255, 255, 3, 3)
      ),
      debugShowCheckedModeBanner: false,
      home: HomeScreen()
    );
  }
}


