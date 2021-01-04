import 'package:flutter/material.dart';
import 'reset.dart';
import 'question.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}
class _MyAppState extends State<MyApp> {
  var questionIndex = 0;
  var totalScore = 0;
  void answerIndex(int score){
    setState(() {
      totalScore = totalScore + score;
      questionIndex = questionIndex+1;
    });
  }
  void reset(){
    setState(() {
      totalScore = 0;
      questionIndex = 0;
    });
  }
  var questions = [
    {'question':'what is the capital of bangladesh?',
      'answer':[
        {'text':'Dhaka','score':10},
        {'text':'Barishal','score':0},
        {'text':'Noakhali','score':0},
        {'text':'Khulna','score':0},
      ]
    },
    {'question':'what is the currency of bangladesh?',
      'answer':[
        {'text':'taka','score':10},
        {'text':'taka','score':0},
        {'text':'taka','score':0},
        {'text':'taka','score':0},
      ]
    },
    {'question':'which one is the best uv of bangladesh?',
      'answer':[
        {'text':'DU','score':10},
        {'text':'CU','score':0},
        {'text':'JU','score':0},
        {'text':'JNU','score':0},
      ]
    }
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Quiz App"),
        ),
        body:questionIndex<questions.length? Container(
          margin: EdgeInsets.all(10.0),
          child: Center(
            child: Column(

              children: [
                // Text(questions[questionIndex]['question']),
                Questions(questions,questionIndex),
                ...(questions[questionIndex]['answer'] as List<Map<String,Object>>).map((answer){
                  return Container(
                    width: double.infinity,
                    margin: EdgeInsets.only(left: 10,right: 10),
                    child: RaisedButton(
                      color: Colors.blue,
                      child:Text(answer['text']),
                      onPressed:()=>answerIndex(answer['score']),
                    ),
                  );
                }).toList(),

              ],
            ),
          ),
        ):Reset(totalScore,reset),
      ),
    );
  }
}
