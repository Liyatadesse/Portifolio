import 'package:flutter/material.dart';
import 'package:portifolio/components/Catagories.dart';
import 'package:portifolio/components/contact.dart';
import 'package:portifolio/components/gallery.dart';

import '../pages/second_screen.dart';

class Body extends StatelessWidget {
  const Body({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20.0),
      child: Column(
        children: [
          Catagories(),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Column(
                children: [
                  const Text(
                    'I  AM  LIYA',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.white),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromARGB(255, 39, 39, 176),
                        // side: BorderSide(width:8, color: Colors.yellow)
                      ),
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (ctx) {
                              return SecondScreen(
                                index: -1,
                              );
                            },
                          ),
                        );
                      },
                      child: const Text(
                        "MORE ABOUT ME ",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  )
                ],
              ),
              Expanded(
                // child: ClipRRect(
                //   borderRadius: BorderRadius.circular(70),
                child: Image.asset(
                  "assets/images/chafront.jpg",
                ),
                // ),
              ),
              const SizedBox(
                width: 20,
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
