

import 'package:flutter/material.dart';

class Result extends StatelessWidget {

  final int resultScore;
  final Function reset;

  Result(this.resultScore,this.reset);

  String get resultPhrase{
    var resultText = "You did it";
    if(resultScore<=8){
      resultText = "you are awesome and innocent";
    }else if(resultScore <=12){
      resultText = "pretty likeable!";
    }else if(resultScore <= 16){
      resultText = "you are weired";
    }else{
      resultText = "you are so bad";
    }
    return resultText;
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Center(
          child: Text(resultPhrase,style: TextStyle(
              fontSize: 36.0,
                  fontWeight: FontWeight.bold
          ),
            textAlign: TextAlign.center,
          ),
        ),
        FlatButton(child: Text('Restart Quiz '),onPressed: reset,),
      ],
    );
  }
}
