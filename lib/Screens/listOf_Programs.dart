import 'package:dmi_univeristy/Screens/helpers/bottomNavBar.dart';
import 'package:dmi_univeristy/Screens/helpers/constants_used.dart';

import 'coursesArray.dart';
import 'package:flutter/material.dart';
import 'program_details.dart';

class CourseLists extends StatelessWidget {
  const CourseLists({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: backColor,
        //leading: Icon(Icons.menu),
        title: const Padding(
          padding: EdgeInsets.only(left: 90),
          child: Text(
            "Programs",
            textAlign: TextAlign.center,
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: courseList.length,
        itemBuilder: (context, index) {
          ourCourses corse = courseList[index];
          //requirements req = required[index];
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: listBackground(
              corse: corse,
              onPress: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Details(myCourse: corse)));
              },
            ),
          );
        },
      ),
      bottomNavigationBar: BottomNav(),
    );
  }
}

class listBackground extends StatefulWidget {
  const listBackground({super.key, required this.corse, required this.onPress});

  final ourCourses corse;
  final Function() onPress;

  @override
  State<listBackground> createState() => _listBackgroundState();
}

class _listBackgroundState extends State<listBackground> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onPress,
      child: Container(
        height: 150,
        width: 200,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: const Color.fromARGB(88, 0, 0, 0),
            image: DecorationImage(
                colorFilter: ColorFilter.mode(
                  Colors.black.withOpacity(0.55),
                  BlendMode.multiply,
                ),
                image: AssetImage(widget.corse.imageTitle), fit: BoxFit.cover),
        ),
        child: Column(
          children: [
            const SizedBox(
              height: 45.0,
            ),
            Text(
              widget.corse.title,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 20.0,
              ),
              textAlign: TextAlign.center,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
            const SizedBox(
              height: 30,
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: Container(
                width: 90,
                height: 30,
                padding: const EdgeInsets.only(left: 8.0),
                margin: const EdgeInsets.only(right: 8.0),
                decoration: BoxDecoration(
                  color:
                      const Color.fromARGB(255, 164, 207, 233).withOpacity(0.4),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Row(
                  children: const [
                    Icon(
                      Icons.library_books,
                      color: Color.fromARGB(255, 23, 163, 65),
                      size: 18,
                    ),
                    SizedBox(width: 7),
                    // Text(cookTime),
                    Text('Apply')
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
