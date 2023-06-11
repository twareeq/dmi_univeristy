import 'package:flutter/material.dart';
import '../helpers/constants_used.dart';

class ResultScreen extends StatefulWidget {
  const ResultScreen(this.score, {Key? key}) : super(key: key);

  final int score;

  @override
  State<ResultScreen> createState() => _ResultScreenState();
}

class _ResultScreenState extends State<ResultScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              'Congratulations',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 38.0,
                  fontWeight: FontWeight.bold),
            ),const Text(
              'Your Score is: ',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 28.0,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              "${widget.score}",
              style: const TextStyle(
                  color: Colors.orange,
                  fontSize: 80.0,
                  fontWeight: FontWeight.bold),
            ),


          ],
        ),
      ),
    );
  }
}
