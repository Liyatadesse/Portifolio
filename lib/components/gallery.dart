import 'package:flutter/material.dart';

class Gallery extends StatelessWidget {
  final index;
  const Gallery({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text('Gallery'),
          backgroundColor: Color.fromARGB(255, 39, 39, 176),
          elevation: 0,
        ),
        body: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset(
                  'assets/images/cha.jpg',
                  width: 150,
                  height: 200,
                ),
                Image.asset(
                  'assets/images/3.jpg',
                  width: 190,
                  height: 200,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset(
                  'assets/images/2.jpg',
                  width: 150,
                  height: 200,
                ),
                Image.asset(
                  'assets/images/abtcha.jpg',
                  width: 190,
                  height: 200,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset(
                  'assets/images/1.jpg',
                  width: 180,
                  height: 200,
                ),
                Image.asset(
                  'assets/images/chafront.jpg',
                  width: 200,
                  height: 190,
                ),
              ],
            ),
          ],
        ));
  }
}
