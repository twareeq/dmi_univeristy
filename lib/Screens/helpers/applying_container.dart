import 'package:dmi_univeristy/Screens/applying.dart';
import 'package:flutter/material.dart';

import '../About/application.dart';



class buildContainer extends StatelessWidget {
  const buildContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
      return Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            gradient: LinearGradient(
                begin: Alignment.bottomRight,
                colors: [
                  Colors.black.withOpacity(.4),
                  Colors.black.withOpacity(.2),
                ])),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            const Text(
              "Application Form",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 35,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 30,
            ),
            builNavigator(onPress: (){
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const Application()));
            }),
            const SizedBox(
              height: 30,
            ),
          ],
        ),
      );
    }
  }
  class builNavigator extends StatelessWidget {
    builNavigator({super.key, required this.onPress});
    Function() onPress;

    @override
    Widget build(BuildContext context) {
      return GestureDetector(
        onTap: onPress,
        child: Container(
          height: 50,
          margin:
          const EdgeInsets.symmetric(horizontal: 40),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white),
          child: Center(
              child: Text(
                "Apply Now",
                style: TextStyle(
                    color: Colors.grey[900],
                    fontWeight: FontWeight.bold),
              )),
        ),
      );
    }
  }

