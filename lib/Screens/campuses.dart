import 'package:dmi_univeristy/Screens/About/application.dart';
import 'package:dmi_univeristy/Screens/listOf_Programs.dart';
import 'package:dmi_univeristy/Screens/course_details.dart';
import 'package:flutter/material.dart';
import 'helpers/bottomNavBar.dart';
import 'helpers/campusArrays.dart';

class Campuses extends StatefulWidget {
  const Campuses({super.key});

  @override
  State<Campuses> createState() => _CampusesState();
}

class _CampusesState extends State<Campuses> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    var size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 71, 206, 132),
        title: const Text("DMI St John University"),
      ),
      body: Column(
        children: [
          Image.asset('images/gara4.jpeg'),
          const SizedBox(height: 5.0,),
          const Text(
            'HOW TO APPLY',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
          ),
          const SizedBox(height: 10,),
          NewExpandedWidget(),
        ],
      ),
      // BOTTOM NAVIGATION BAR
      bottomNavigationBar: BottomNav(),
    );
  }
}

class NewExpandedWidget extends StatelessWidget {
  const NewExpandedWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: campusList.length,
        itemBuilder: (context, index) {
          OurCampuses c = campusList[index];
          return GestureDetector(
            onTap: () {
              if(c.title == 'OUR COURSES'){
                Navigator.push(context, MaterialPageRoute(builder: (context) => CourseLists()));
              } else{
                Navigator.push(context, MaterialPageRoute(builder: (context) => CampusDetails(campDetail: c)));
              }
            },
            child: ListTile(
              leading: Image.asset(c.imgTitle, height: 90,width: 90,),
              title: Padding(
                padding: const EdgeInsets.only(top: 15.0),
                child: Text(c.title, textAlign: TextAlign.center,),
              ),
              subtitle: Text(c.description, textAlign: TextAlign.justify,),
            ),
          );
        },
      ),
    );
  }
}
