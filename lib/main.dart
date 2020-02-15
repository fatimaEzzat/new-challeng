import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  return runApp(
      MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.blue,
          appBar: AppBar(
            title: Text('Ask Me Anything',),centerTitle: true,
            backgroundColor: Colors.indigo,
          ),
          body:MyQuestion(),
        ),
      )
  );
  
} 

class MyQuestion extends StatefulWidget {
  @override
  _MyQuestionState createState() => _MyQuestionState();
}

class _MyQuestionState extends State<MyQuestion> {
  int ballNum=1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child:
          FlatButton(
            onPressed: (){
              ballNum=Random().nextInt(5)+1;
              print('hellooo');
              print('ballNum:$ballNum');
            },
            child: Image.asset('Images/ball$ballNum.png'),
          ),
    );

  }
}
