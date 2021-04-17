import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:loja_mobile/tabs/category_tab.dart';
import 'package:loja_mobile/tabs/home_tab.dart';
import 'package:loja_mobile/widgets/custom_drawer.dart';

class HomeScreen extends StatelessWidget {

  final _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: _pageController,
      physics: NeverScrollableScrollPhysics(),
      children: <Widget>[
        Scaffold(
          body: HomeTab(),
          drawer: CustomDrawer(_pageController),
        ),
        Scaffold(
          appBar: AppBar(
            title: Text("Produtos"),
            centerTitle: true,
          ),
          drawer: CustomDrawer(_pageController),
          body: CategoryTab(),
        ),
        Container(color: Colors.amberAccent,)
      ],
    );
  }
}
