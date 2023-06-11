import 'package:flutter/material.dart';

class myCard extends StatelessWidget {
  myCard({super.key,required this.onPress,required this.imgName,required this.label,required this.description});
  final String imgName;
  final String label;
  final String description;
  Function() onPress;

  @override
  Widget build(BuildContext context) {
      return GestureDetector(
        onTap: onPress,
        child: Card(
          child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: Column(
              children: [
                Expanded(
                  child: Image(
                    image: AssetImage(
                        'images/$imgName.png'),
                  ),
                ),
                Text(
                  label,
                  style: const TextStyle(
                      decoration: TextDecoration.underline,
                      decorationColor: Colors.red,
                      fontWeight: FontWeight.bold,
                      color: Colors.red),
                ),
                Text(
                  description,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 10,
                  ),
                )
              ],
            ),
          ),
        ),
      );
    }
  }
