import 'package:dmi_univeristy/Screens/About/application.dart';
import 'package:dmi_univeristy/Screens/About/masters_application.dart';
import 'package:flutter/material.dart';

import '../About/degree_application.dart';

dropdown d = dropdown(variable: "DEGREE");

class MyDialog {
  Future<void> showMyDialog(BuildContext context) async{
    return showDialog(context: context,
        barrierDismissible: false,
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text('Specify the level of Education you are Applying for', textAlign: TextAlign.center,),
            content: SizedBox(
              height: 100,
              child: Column(
                children: [
                  d,
                ],
              ),
            ),
            actions: [
              Center(
                child: ElevatedButton(onPressed: (){
                  if(d.variable == 'DEGREE'){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Apply(linkurl: "https://docs.google.com/forms/d/e/1FAIpQLSc3SK00PlrBMXukgz4Z1UKG2HwrDgYzOK16Z_tBenp6NDnsYw/viewform")));
                  } else if(d.variable == 'MASTERS') {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Apply(linkurl: "https://docs.google.com/forms/d/e/1FAIpQLSdVZPIcuor6HUk61DKmO3iVVow4duWR5i7fqZ7qYeQko7yD2A/viewform?usp=sf_link",)));
                  } else{
                    Navigator.of(context).pop('No Results');
                  }
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.greenAccent,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)
                  )
                ), child: const Text(
                    'Apply Now'
                ),
                ),
              ),
            ],
          );
        });
  }
}
String s = 'Lilongwe';
String dropdownValue = 'DEGREE';
class dropdown extends StatefulWidget {
  dropdown({super.key, required this.variable});

  String variable;
  @override
  State<dropdown> createState() => _dropdownState();
}

class _dropdownState extends State<dropdown> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DropdownButton<String>(
          value: dropdownValue,
          items: <String>['MASTERS', 'DEGREE'].map<DropdownMenuItem<String>>((variable) {
            return DropdownMenuItem(value: variable, child: Text(variable),);
          }).toList(),
          onChanged: (String? newValue) {
            setState(() {
              dropdownValue = newValue!;
            });
          },
        )
      ],
    );
  }
}
