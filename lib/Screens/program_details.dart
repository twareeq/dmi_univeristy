import 'package:dmi_univeristy/Screens/applying.dart';
import 'package:dmi_univeristy/Screens/helpers/constants_used.dart';
import 'package:flutter/material.dart';

import 'coursesArray.dart';

class Details extends StatefulWidget {
  const Details({super.key, required this.myCourse,});

  final ourCourses myCourse;

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.white70,
      appBar: AppBar(
        backgroundColor: backColor,
        //leading: Icon(Icons.menu),
        title: Text(
          widget.myCourse.title,
          textAlign: TextAlign.center,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //COURSE IMAGE
              Image.asset(widget.myCourse.imageTitle),
              const SizedBox(
                height: 10.0,
              ),
              Text(
                widget.myCourse.title,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 28,
                ),
              ),
              const SizedBox(
                height: 15.0,
              ),
              Text(widget.myCourse.description),
              const SizedBox(
                height: 15.0,
              ),
              // REQUIREMENTS
              const Align(
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    'REQUIREMENTS',
                    textAlign: TextAlign.left,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  )),
              const SizedBox(
                height: 20.0,
              ),
              // DEGREE
              const Align(
                alignment: Alignment.bottomLeft,
                child: Text(
                  'Degree Program',
                  textAlign: TextAlign.left,
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.red),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(8.0),
                child: Table(
                  border: TableBorder.all(color: Colors.black),
                  children: [
                    const TableRow(children: [
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          'Subjects',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          'Grades',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      )
                    ]),
                    const TableRow(children: [
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text('English'),
                      ),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text('Credit'),
                      )
                    ]),
                    TableRow(children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(widget.myCourse.degree),
                      ),
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text('Credit'),
                      )
                    ]),

                  ],
                ),
              ),
              const SizedBox(
                height: 10.0,
              ),
              const Align(
                alignment: Alignment.bottomLeft,
                child: Text(
                  'TUITION FEES',
                  textAlign: TextAlign.left,
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.red),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(8.0),
                child: Table(
                  border: TableBorder.all(color: Colors.black),
                  children: const [
                    TableRow(children: [
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          'DEGREE',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          'DEPLOMA',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      )
                    ]),
                    TableRow(children: [
                      Padding(
                        padding: EdgeInsets.all(20.0),
                        child: Text('MWK 550, 000'),
                      ),
                      Padding(
                        padding: EdgeInsets.all(20.0),
                        child: Text('MWK 350, 000'),
                      )
                    ]),

                  ],
                ),
              ),
              // MASTERS PART
              const Align(
                alignment: Alignment.bottomLeft,
                child: Text(
                  'Masters Program',
                  textAlign: TextAlign.left,
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.red),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(18.0),
                child: Table(
                  border: TableBorder.all(color: Colors.black),
                  children: [
                    const TableRow(children: [
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          'Requirements',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ]),
                    TableRow(children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("Should have a degree in ${widget.myCourse.masters}"),
                      ),
                    ]),
                  ],
                ),
              ),
              const SizedBox(
                height: 10.0,
              ),
              ElevatedButton(onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const Application()));
              },
                  style: ElevatedButton.styleFrom(
                      fixedSize: const Size(300, 50),
                      backgroundColor: Colors.deepOrange
                  ),
                  child: const Text('Apply Now')),

            ],
          ),
        ),
      ),
    );
  }
}
