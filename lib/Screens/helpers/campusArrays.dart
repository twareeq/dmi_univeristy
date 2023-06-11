import 'package:flutter/material.dart';


class OurCampuses {
  OurCampuses({required this.imgTitle, required this.title, required this.description});

  String imgTitle;
  String title;
  String description;

}
List<OurCampuses> campusList = [
  OurCampuses(imgTitle: 'images/dm.png', title: 'ADMISSION', description: 'DMI St. John the Baptist University is in Lilongwe and Mangochi, Malawi, have signed an agreement with ABMA Education.'),
  OurCampuses(imgTitle: 'images/lab.jpg', title: 'OUR COURSES', description: 'DMI St. John the Baptist University offers the following Courses: School of Education, School of Commerce, School of Management Studies & BSc.'),
  OurCampuses(imgTitle: 'images/gara.jpg', title: 'NEWS', description: 'The fifth graduation ceremony was organized on 22November 2019 at Bingu International Conference Centre, Lilongwe Malawi.'),
  OurCampuses(imgTitle: 'images/gara4.jpeg', title: 'CULTURAL DAY', description: 'Information Technology (IT) has had a tremendous impact on the growth of globalization in the past few decades. IT has made it easier to communicate and share information across the world, allowing companies and individuals to reach markets and audiences beyond their geographic boundaries')
];