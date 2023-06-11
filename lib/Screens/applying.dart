import 'package:dmi_univeristy/Screens/About/application.dart';
import 'package:dmi_univeristy/Screens/helpers/constants_used.dart';
import 'package:dmi_univeristy/Screens/helpers/dialogBox.dart';
import 'package:flutter/material.dart';
import 'dart:async';

import 'About/nav_drawer.dart';
import 'helpers/bottomNavBar.dart';

MyDialog mine = new MyDialog();

class Application extends StatelessWidget {
  const Application({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      drawer: NavBar(),
      appBar: AppBar(
        backgroundColor: backColor,
        title: const Text(
          'APPLICATION FORM',
          textAlign: TextAlign.center,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const SizedBox(height: 50.0,),
            Image.asset('images/edu.jpg', height: 300, width: 300,),
            const SizedBox(height: 10.0,),
            const Text('Dear Student', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
            const SizedBox(height: 20.0,),
            const Text('We are pleased to Welcome you to DMI st John The Baptist University', textAlign: TextAlign.center,),
            const SizedBox(height: 20.0,),
            const Text('Please finalize your application by completing the following   steps', textAlign: TextAlign.center,),
            const SizedBox(height: 40.0,),
            // NOTICE AREA
            Container(
              width: 300,
              padding: const EdgeInsets.all(8.0),
              decoration: const BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.all(Radius.circular(5.0)),
              ),
              child: Row(
                children: const [
                  Icon(Icons.warning),
                  SizedBox(width: 10.0,),
                  Text('Please fill in all the Required fields'),
                ],
              ),
            ),
            const SizedBox(height: 40.0,),
            // BEGINNING BUTTON
            ElevatedButton(onPressed: () {
              mine.showMyDialog(context);
            },
                style: ElevatedButton.styleFrom(
                  fixedSize: const Size(400, 50),
                  backgroundColor: Colors.red,
                  //disabledBackgroundColor: Colors.red,
                ),
                child: const Text("Let's Begin", style: TextStyle(color: Colors.white),))
          ],
        ),
      ),
      bottomNavigationBar: const BottomNav(),
    );
  }
}
