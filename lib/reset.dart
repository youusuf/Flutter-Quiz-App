import 'package:flutter/material.dart';

class Reset extends StatelessWidget {
  final int score;
  final Function resetqstn;
  Reset(this.score,this.resetqstn);


  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          children: [
            Text("You Did It Score: $score",style: TextStyle(fontSize: 20.0),),
            FlatButton(
              child: Text('Reset Quiz'),
              onPressed:resetqstn,
            )
          ],
        ),
      ),
    );
  }
}
