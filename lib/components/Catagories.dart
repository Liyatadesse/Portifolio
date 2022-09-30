import 'package:flutter/material.dart';
import 'package:portifolio/components/contact.dart';
import 'package:portifolio/components/gallery.dart';
import 'package:portifolio/pages/home/home.dart';
import 'package:portifolio/pages/second_screen.dart';

class Catagories extends StatefulWidget {
  const Catagories({
    super.key,
  });

  @override
  State<Catagories> createState() => _CatagoriesState();
}

class _CatagoriesState extends State<Catagories> {
  List<String> categories = [
    "HOME",
    "ABOUT ME",
    "MY GALLERY",
    "CONTACT ME",
  ];
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: SizedBox(
        height: 30,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (context, index) => buildCategory(index),
        ),

        //       child: ListView(
        //         // This next line does the trick.
        //         scrollDirection: Axis.horizontal,
        //         children: <Widget>[
        //           Container(
        //             child: ElevatedButton(
        //               child: Text("Home"),
        //               onPressed: () {},
        //             ),
        //           ),
        //           Container(
        //             child: ElevatedButton(
        //               child: Text("my gallery"),
        //               onPressed: () {},
        //             ),
        //           ),
        //           Container(
        //             child: ElevatedButton(
        //               child: Text("about me"),
        //               onPressed: () {},
        //             ),
        //           ),
        //           Container(
        //             child: ElevatedButton(
        //               child: Text("contact me "),
        //               onPressed: () {},
        //             ),
        //           ),
        //         ],
        //       ),
      ),
    );
  }

  Widget buildCategory(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedIndex = index;
        });
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5),
        child: TextButton(
          onPressed: () {
            myFun(index) {
              switch (index) {
                case 0:
                  return HomeScreen(
                    index: 0,
                  );
                case 1:
                  return SecondScreen(index: 1);
                case 2:
                  return Gallery(index: 2);
                default:
                  return Contact(index: 3);
              }
            }

            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => myFun(index)),
            );
            // Navigator.push(
            //   context,
            //   MaterialPageRoute(
            //     builder: (context) => SecondScreen(),
            //   ),
            // );
          },
          child: Text(
            categories[index],
            style: TextStyle(
              // fontSize: 20,
              fontWeight: FontWeight.bold,
              color: selectedIndex == index
                  ? Colors.amber
                  : const Color.fromARGB(255, 39, 39, 176),
            ),
          ),
        ),
      ),
    );
  }
}
