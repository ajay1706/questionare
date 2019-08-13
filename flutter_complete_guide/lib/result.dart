import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;

  Result(this.resultScore,this.resetHandler);

  String get resultPhrase {
    String resultText = "You did it";
    if (resultScore <= 8) {
      resultText = "Your are awesome & innocent";
    } else if (resultScore <= 12) {
      resultText = "Pretty likeable";
    }
    else if (resultScore <= 16) {
      resultText = "You are ... Strange?1";
    }
    else {
      resultText = " your are too bad ";
      return resultText;
    }
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Column(
        children: <Widget>[
      Text(
          "You did it \n Your Score is: $resultScore",
          style:
          TextStyle(fontSize: 25.0, fontWeight: FontWeight.w900,
          ),textAlign: TextAlign.center,
      ),
        FlatButton(
          child: Text("Restart Quiz",),
          onPressed:resetHandler ,
        )],
        ),
      );



  }
}