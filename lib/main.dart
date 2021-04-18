import 'package:flutter/material.dart';
import 'package:loja_mobile/screens/login_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Loja A P',
      theme: ThemeData(
        primarySwatch: Colors.yellow,
        primaryColor: Color.fromARGB(255, 243, 25, 25),
      ),
      debugShowCheckedModeBanner: false,
      home: LoginScreen()
    );
  }
}


