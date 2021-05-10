import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Questionnaire extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Questionnaire"),
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
                  child: CustomQuestionnairePage(),
                ),
              ),
            )
        )
    );
  }
}

class CustomQuestionnairePage extends StatefulWidget {
  @override
  _CustomQuestionnairePageState createState() => _CustomQuestionnairePageState();
}

class _CustomQuestionnairePageState extends State<CustomQuestionnairePage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 15.0),
          child: Text("Choose the type of Questionnaire from the list below"),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 15.0),
          child: ElevatedButton(
            onPressed: (){
              Navigator.pushNamed(context, "/weekly");
            },
            child: Text("Weekly Questionnaire"),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 15.0),
          child: ElevatedButton(
            onPressed: (){
              Navigator.pushNamed(context, "/monthly");
            },
            child: Text("Monthly Questionnaire"),
          ),
        ),
      ],
    );
  }
}
