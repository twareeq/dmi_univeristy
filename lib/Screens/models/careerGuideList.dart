import 'package:flutter/material.dart';

class questionList {
  questionList(this.question, this.answers);
  
  String question;
  Map<String, bool> answers;
}

List<questionList> questions = [
  questionList('Who is the father of computer?', {
    'Jeff Bazzos': false,
    'Chales Babbage' : true,
    'Bill Gates' : false,
    'Elon Mask' : false
  }),
  questionList('What role does Adah Laurance play in the tech of Computer?', {
    'Charles Babbage\'s wife': false,
    'Mother of Computer' : true,
    'Programmer' : false,
    'Designer and Developer' : false
  }),
  questionList('In which of the things below did computers use in the 2nd generation of computers', {
    'Vaccume tubes': false,
    'Micro Chips' : false,
    'Thermometer' : false,
    'Transistors' : true,
  }),
];