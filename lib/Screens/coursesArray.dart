import 'package:flutter/material.dart';


String m = 'Mathematics', e = 'English', c = 'Chemistry', p = 'Physics';
String a = 'Credit';
String hr ='Human Resource';
String bba = 'BBA';
String bcom = 'BCOM';
String bsc = 'BSC';
String be = 'BE';

class ourCourses {
  ourCourses({required this.degreeFee, required this.diplomaFee, required this.imageTitle,required this.title, required this.description, required this.grade, required this.degree, required this.masters});

  String title;
  String imageTitle;
  String description;
  String grade;
  String degree;
  String masters;
  String degreeFee;
  String diplomaFee;

}
List<ourCourses> courseList = [
  ourCourses(title: 'Business Administration', imageTitle: 'images/gara1.jpg', description: 'Business Administration is an academic discipline that focuses on the management and operations of organizations, both for-profit and non-profit. The curriculum typically covers topics such as finance, accounting, marketing, operations management, organizational behavior, and strategic management.', grade: a, degree: '$m, $e', masters: '$hr, $bba or $bcom', degreeFee: 'MWK 450, 000', diplomaFee: 'MWK 250, 000',),
  ourCourses(title: 'Computer Engineering', imageTitle: 'images/gara2.jpg', description: 'Computer Engineering is an academic discipline that focuses on the design, development, and maintenance of computer systems and their components, including hardware and software. The curriculum typically covers topics such as computer architecture, digital logic design, programming, algorithms, data structures, and operating systems.', grade: a, degree: '$m, $c and $p', masters: '$be, IT or $bsc' , degreeFee: 'MWK 650, 000', diplomaFee: 'MWK 400, 000',),
  ourCourses(title: 'Computer Science', imageTitle: 'images/gara3.jpg', description: 'Computer Science is an academic discipline that deals with the theory, design, development, and application of computers and computing technologies. It encompasses a wide range of topics, including programming languages, algorithms, data structures, databases, computer networks, computer graphics, artificial intelligence, and software engineering.', grade: a, degree: '$m', masters: '$be, IT or $bsc', degreeFee: 'MWK 550, 000', diplomaFee: 'MWK 350, 000', ),
  ourCourses(title: 'Social Work', imageTitle: 'images/gara5.jpeg', description: 'Social Work is an academic discipline that focuses on helping individuals, families, and communities overcome challenges and improve their well-being. The curriculum typically covers topics such as human behavior, social policy, diversity and oppression, social work practice, and research methods.', grade: a, degree: 'Any other subjects', masters: '$hr or BSW', degreeFee: 'MWK 350, 000', diplomaFee: 'MWK 150, 000',),
];
