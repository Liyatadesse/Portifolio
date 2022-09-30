import 'package:flutter/material.dart';
import 'package:portifolio/components/body.dart';

import '../../components/Catagories.dart';

class HomeScreen extends StatelessWidget {
  final index;
  const HomeScreen({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      resizeToAvoidBottomInset: false,
      appBar: buildAppBar(),
      body: Body(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: Color.fromARGB(255, 39, 39, 176),
      title: Text(
        "WELCOME TO MY PERSONAL WEBSITE ",
        style: TextStyle(color: Colors.white),
      ),
      centerTitle: true,
      elevation: 0,
    );
  }
}
