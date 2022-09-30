import 'package:flutter/material.dart';

import 'package:portifolio/pages/home/home.dart';



void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      primaryColor: Colors.black,
      primarySwatch: Colors.grey,
    ),
    home: const  HomeScreen(index:0),
    //  builder: (context, Widget) =>
    // 
  ));
}
