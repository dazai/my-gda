import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MonthlyForm extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Weekly form"),
          centerTitle: true,
          backgroundColor: Colors.lightBlue,
        ),
        body: new GestureDetector(
            onTap: (){
              FocusScope.of(context).unfocus();
            },
            child: SingleChildScrollView(
              child: ConstrainedBox(
                constraints: BoxConstraints(),
                child: Center(
                  child: Text("This is the monthly form"),
                ),
              ),
            )
        )
    );
  }
}