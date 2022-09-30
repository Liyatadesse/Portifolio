import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  final index;
  const SecondScreen({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('About Me '),
        backgroundColor: Color.fromARGB(255, 39, 39, 176),
        elevation: 0,
      ),
      body: Column(
        children: [
          // Expanded(
          //     child: Image.asset(
          //   "assets/images/1.jpg",
          // )),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 20, 30, 10),
            child: RichText(
                text: TextSpan(children: [
              TextSpan(
                  text: "   BIOGRAPHY\n\n",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.black,
                    letterSpacing: 5,
                  )),
              TextSpan(
                  text:
                      "My name is liya Tadesse i am a student at Addis Ababa University. I was born in the year 2001 in kobo, Ethiopia.I started my primary education at the age of 3 at saint joseph school and i have finished my high school in 2019 in general & preparatory secondary School. Later on, in 2019 I joined Addis Ababa University. And now I am a third year Infomation system student.",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.normal,
                      letterSpacing: 1,
                      height: 2))
            ])),
          )
        ],
      ),
    );
  }
}
