import 'package:dmi_univeristy/Screens/helpers/bottomNavBar.dart';
import 'package:dmi_univeristy/Screens/helpers/campusArrays.dart';
import 'package:flutter/material.dart';

import 'listOf_Programs.dart';
import 'helpers/constants_used.dart';

class CampusDetails extends StatefulWidget {
  CampusDetails({super.key, required this.campDetail});

  OurCampuses campDetail;

  @override
  State<CampusDetails> createState() => _CampusDetailsState();
}

class _CampusDetailsState extends State<CampusDetails> {
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
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Image.asset(widget.campDetail.imgTitle),
            const SizedBox(
              height: 10.0,
            ),
            Text(widget.campDetail.title),
            const SizedBox(
              height: 10.0,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                widget.campDetail.description,
                textAlign: TextAlign.justify,
              ),
            ),
            const SizedBox(height: 20.0,),
            Expanded(
              child: ListView.builder(
                itemCount: campusList.length,
                itemBuilder: (context, index) {
                  OurCampuses c = campusList[index];
                  return GestureDetector(
                    onTap: () {
                      if (c.title == 'OUR COURSES') {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CourseLists()));
                      } else {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    CampusDetails(campDetail: c)));
                      }
                    },
                    child: ListTile(
                      leading: Image.asset(
                        c.imgTitle,
                        height: 90,
                        width: 90,
                      ),
                      //title: Text(c.title, textAlign: TextAlign.center,),
                      subtitle: Text(
                        c.description,
                        textAlign: TextAlign.justify,
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNav(),
    );
  }
}
