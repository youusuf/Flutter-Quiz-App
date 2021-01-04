import 'package:flutter/material.dart';

class Questions extends StatelessWidget {
  final List question;
  final int index;
  Questions(this.question,this.index);
  @override
  Widget build(BuildContext context) {
    return Text(
      //questions[questionIndex]['question']
        question[index]['question']
    );
  }
}
