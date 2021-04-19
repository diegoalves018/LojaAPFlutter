import 'package:flutter/material.dart';
import 'package:loja_mobile/models/cart_model.dart';
import 'package:loja_mobile/models/user_model.dart';
import 'package:loja_mobile/screens/home_screen.dart';
import 'package:scoped_model/scoped_model.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ScopedModel<UserModel>(
      model: UserModel(),
      child: ScopedModelDescendant<UserModel>(
        builder: (context, child, model){
          return ScopedModel<CartModel>(
            model: CartModel(model),
            child: MaterialApp(
                title: 'Loja A P',
                theme: ThemeData(
                  primarySwatch: Colors.blue,
                  primaryColor: Color.fromARGB(255, 243, 25, 25),
                ),
                debugShowCheckedModeBanner: false,
                home: HomeScreen()
            ),
          );
        }
      )
    );
  }
}


