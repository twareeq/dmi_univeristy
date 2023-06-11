import 'package:flutter/material.dart';

Stack buildStack(double screenWidth, int index, int currentIndex) {
  return Stack(
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
              color: index == currentIndex
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
                  color: index == currentIndex
                      ? Colors.blueAccent
                      : Colors.black26,
                ),
              ),
              listOfText[index],
            ],
          ),
        ],
      ),
    ],
  );
}


// LIST OF ICONS
List<IconData> listOfIcons = [
  Icons.home_rounded,
  Icons.school_rounded,
  Icons.library_books_rounded,
  Icons.person_rounded,
];
const List listOfText = [
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

