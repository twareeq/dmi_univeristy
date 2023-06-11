import 'package:dmi_univeristy/Screens/CareerGuidance.dart';
import 'package:dmi_univeristy/Screens/chatBoat/dmiBoat.dart';
import 'package:dmi_univeristy/Screens/helpers/bottomNavBar.dart';
import 'package:dmi_univeristy/Screens/profile/mainProfile.dart';
import 'package:flutter/material.dart';

import 'listOf_Programs.dart';
import 'helpers/applying_container.dart';
import 'campuses.dart';
import 'person_info.dart';
import 'About/card_details.dart';
import 'About/nav_drawer.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {

    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      drawer: NavBar(),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 2, 7, 58),
        title: const Text('DMI st John The Baptist University'),
      ),
      body: Stack(
        children: [
          Container(
            height: size.height * .3,
            decoration: const BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.fill,
                alignment: Alignment.topCenter,
                image: AssetImage('images/blue.jpg'),
              ),
            ),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(
                child: Column(
                  children: [
                    // GRID VIEW
                    Expanded(
                      child: GridView.count(
                        crossAxisCount: 2,
                        mainAxisSpacing: 10,
                        crossAxisSpacing: 10,
                        primary: false,
                        children: [
                          // Programs
                          myCard(
                            onPress: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const CourseLists()));
                            },
                            imgName: 'graduation-hat',
                            label: 'Programs',
                            description: 'Scholarship programs available',
                          ),
                          // Personal Information
                          myCard(
                              onPress: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => MyInfo()));
                              },
                              imgName: 'user',
                              label: 'Personal Info',
                              description: 'Your personal information'),
                          // Campuses
                          myCard(
                              onPress: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => const Campuses()));
                              },
                              imgName: 'school',
                              label: 'Campuses',
                              description: 'Includes campuses list in Malawi'),
                          // Career Guidance
                          myCard(
                              onPress: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context) => CareerGuide()));
                              },
                              imgName: 'career-path',
                              label: 'Career Guidance',
                              description: 'Need guidance on your career?'),
                        ],
                      ),
                    ),
                    // FLOATING ACTION BUTTON
                    FloatingActionButton(
                      onPressed: () {
                        // Add your desired action here
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => MyBoat()));
                      },
                      child: Icon(Icons.face),
                      backgroundColor: Colors.black26,
                    ),
                    Text('Lets Chat', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16, color: Colors.black26),),
                    const SizedBox(
                      height: 10.0,
                    ),
                    // APPLYING CONTAINER
                    Container(
                      width: double.infinity,
                      height: 170,
                      decoration: BoxDecoration(
                          color: const Color.fromARGB(88, 0, 0, 0),
                          borderRadius: BorderRadius.circular(20),
                          image: const DecorationImage(
                              image: AssetImage('images/dmi.png'),
                              fit: BoxFit.cover)),
                      child: const buildContainer(),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
      // BOTTOM NAVIGATION BAR
      bottomNavigationBar: const BottomNav(),
    );
  }
}
