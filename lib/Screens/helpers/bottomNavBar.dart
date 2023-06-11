import 'package:dmi_univeristy/Screens/campuses.dart';
import 'package:dmi_univeristy/Screens/listOf_Programs.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../homeScreen.dart';
import '../person_info.dart';
import '../program_details.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({Key? key}) : super(key: key);

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  @override
  Widget build(BuildContext context) {

    // ACTION FOR BOTTOM NAVIGATION
    var currentIndex = 0;
    void onTabTapped(int index) {
      setState(() {
        currentIndex = index;
      });
      if (index == 0) {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const HomeScreen()));
      }else if (index == 1) {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => const Campuses()));
      } else if (index == 2) {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => const CourseLists()));
      } else if (index == 3) {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => const Personal()));
      }
    }

    double screenWidth = MediaQuery.of(context).size.width;
    var size = MediaQuery.of(context).size;

    return Container(
      margin: const EdgeInsets.all(10),
      height: screenWidth * .15,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(.15),
            blurRadius: 30,
            offset: const Offset(0, 10),
          ),
        ],
        borderRadius: BorderRadius.circular(50),
      ),
      child: ListView.builder(
        itemCount: 4,
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.symmetric(
            horizontal: screenWidth * .024, vertical: 5.0),
        itemBuilder: (context, index) => InkWell(
          onTap: () {
            onTabTapped(index);
            setState(() {
              currentIndex = index;
              HapticFeedback.lightImpact();
            });
          },
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
          child: Stack(
            children: [
              SizedBox(
                width: screenWidth * .2125,
                child: Center(
                  child: AnimatedContainer(
                    duration: const Duration(seconds: 1),
                    curve: Curves.fastLinearToSlowEaseIn,
                    height: index == currentIndex ? screenWidth * .12 : 0,
                    width: index == currentIndex ? screenWidth * .2125 : 0,
                    decoration: BoxDecoration(
                      color: index == 1
                          ? Colors.blueAccent.withOpacity(.2)
                          : Colors.transparent,
                      borderRadius: BorderRadius.circular(50),
                    ),
                  ),
                ),
              ),
              Row(
                children: [
                  Column(
                    children: [
                      Container(
                        width: screenWidth * .2145,
                        alignment: Alignment.center,
                        child: Icon(
                          listOfIcons[index],
                          size: screenWidth * .076,
                          color:
                          index == 1 ? Colors.blueAccent : Colors.black26,
                        ),
                      ),
                      listofText[index],
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}


// LIST OF ICONS
List<IconData> listOfIcons = [
  Icons.home_rounded,
  Icons.school_rounded,
  Icons.library_books_rounded,
  Icons.person_rounded,
];
const List listofText = [
  Text(
    'Home',
    textDirection: TextDirection.ltr,
    style: TextStyle(
        fontSize: 12,
        decoration: TextDecoration.none,
        fontFamily: 'Raleway',
        fontWeight: FontWeight.w100),
  ),
  Text(
    'Campuses',
    textDirection: TextDirection.ltr,
    style: TextStyle(
        fontSize: 12,
        decoration: TextDecoration.none,
        fontFamily: 'Raleway',
        fontWeight: FontWeight.w100),
  ),
  Text('Apply',
      textDirection: TextDirection.ltr,
      style: TextStyle(
          fontSize: 12,
          decoration: TextDecoration.none,
          fontFamily: 'Raleway',
          fontWeight: FontWeight.w100)),
  Text('Profile',
      textDirection: TextDirection.ltr,
      style: TextStyle(
          fontSize: 12,
          decoration: TextDecoration.none,
          fontFamily: 'Raleway',
          fontWeight: FontWeight.w100))
];

