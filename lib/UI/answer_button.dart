import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget{

  //Underscore variable names are intrinsically private
  final bool _answer;
  // A VoidCallBack is a function that can execute and not return anything
  // In this case, the function is called _onTap
  // A VoidCallBack does not have any arguments
  final VoidCallback _onTap;

  // Constructor
  AnswerButton(this._answer, this._onTap);

  

  @override
  Widget build(BuildContext context){
    return new Expanded( //True Button
      child: new Material( 
        color: _answer == true ? Colors.greenAccent : Colors.redAccent,
        child: new InkWell(
          //The VoidCallback function requires () on the _onTap call below
          onTap: () => _onTap(),
          child: new Center(
            child: new Container(
              decoration: new BoxDecoration(
                border: new Border.all(color: Colors.white, width: 5.0)),
              padding: new EdgeInsets.all(20.0),
              child: new Text(_answer == true ? "True" : "False",
              style: new TextStyle(color: Colors.white, fontSize: 40.0, fontWeight: FontWeight.bold, fontStyle: FontStyle.italic)),
            ),
          ),
        ),
      ),
    );
  }
}