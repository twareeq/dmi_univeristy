import 'package:dmi_univeristy/Screens/chatBoat/dmiBoat.dart';
import 'package:dmi_univeristy/Screens/helpers/constants_used.dart';
import 'package:flutter/material.dart';

import 'helpers/bottomNavBar.dart';


class Personal extends StatefulWidget {
  const Personal({super.key});

  @override
  State<Personal> createState() => _PersonalState();
}

class _PersonalState extends State<Personal> {
  @override
  Widget build(BuildContext context) {

    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: backColor,
        //leading: Icon(Icons.menu),
        title: const Padding(
          padding: EdgeInsets.only(left: 90),
          child: Text(
            "Profile",
            textAlign: TextAlign.center,
          ),
        ),
      ),
      body: Container(),

      // BOTTOM NAVIGATION BAR
      bottomNavigationBar: BottomNav(),
    );
  }
}