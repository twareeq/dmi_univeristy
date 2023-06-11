import 'package:dmi_univeristy/Screens/helpers/bottomNavBar.dart';
import 'package:dmi_univeristy/Screens/models/careerGuideList.dart';
import 'package:dmi_univeristy/Screens/models/resultPage.dart';
import 'package:flutter/material.dart';

import 'helpers/constants_used.dart';

class CareerGuide extends StatefulWidget {
  const CareerGuide({Key? key}) : super(key: key);

  @override
  State<CareerGuide> createState() => _CareerGuideState();
}

class _CareerGuideState extends State<CareerGuide> {
  //Controller
  final PageController _controller = PageController(initialPage: 0);
  bool isPressed = false;
  Color btnColor = const Color(0xFF117eeb);
  int score = 10;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainColor,
      // appBar: AppBar(
      //   backgroundColor: Colors.green,
      //   //leading: Icon(Icons.menu),
      //   title: const Padding(
      //     padding: EdgeInsets.only(left: 90),
      //     child: Text(
      //       "Amptitude Test",
      //       textAlign: TextAlign.center,
      //     ),
      //   ),
      // ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: PageView.builder(
          controller: _controller,
          physics: const NeverScrollableScrollPhysics(),
          onPageChanged: (page) {
            setState(() {
              isPressed = false;
            });
          },
          itemCount: questions.length,
          itemBuilder: (context, index) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                    width: double.infinity,
                    child: Text(
                      "Question ${index + 1}/${questions.length}",
                      style:
                          const TextStyle(fontSize: 28.0, color: Colors.white),
                    )),
                const Divider(
                  color: Colors.white,
                  height: 8.0,
                  thickness: 1.0,
                ),
                const SizedBox(
                  height: 20.0,
                ),
                Text(
                  questions[index].question,
                  style: const TextStyle(color: Colors.white, fontSize: 28.0),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                for (int i = 0; i < questions[index].answers.length; i++)
                  Container(
                    width: double.infinity,
                    margin: const EdgeInsets.only(bottom: 18.0),
                    child: MaterialButton(
                      onPressed: isPressed
                          ? () {}
                          : () {
                              setState(() {
                                isPressed = true;
                              });
                              if (questions[index]
                                  .answers
                                  .entries
                                  .toList()[i]
                                  .value) {
                                score += 10;
                                print(score);
                              }
                            },
                      shape: const StadiumBorder(),
                      color: isPressed
                          ? questions[index].answers.entries.toList()[i].value
                              ? trueAnswer
                              : wrongAnswer
                          : secondColor,
                      textColor: Colors.white,
                      padding: const EdgeInsets.symmetric(vertical: 18.0),
                      child: Text(questions[index].answers.keys.toList()[i]),
                    ),
                  ),
                const SizedBox(
                  height: 30.0,
                ),
                // NEXT PAGE
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    OutlinedButton(
                      onPressed: isPressed
                          ? index + 1 == questions.length? () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => ResultScreen(score)));
                      } : () {
                              _controller.nextPage(
                                  duration: const Duration(milliseconds: 750),
                                  curve: Curves.linear);
                              setState(() {
                                isPressed = false;
                              });
                            }
                          : null,
                      child: Text(
                        index + 1 == questions.length
                            ? "See results"
                            : "Next Question",
                        style: const TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ],
            );
          },
        ),
      ),
      //bottomNavigationBar: const BottomNav(),
    );
  }
}
