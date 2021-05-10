import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WeeklyForm extends StatelessWidget{
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
                  child: MyQuestionnaire()
                ),
              ),
            )
        )
    );
  }
}

class MyQuestionnaire extends StatefulWidget {
  @override
  _MyQuestionnaireState createState() => _MyQuestionnaireState();
}

class _MyQuestionnaireState extends State<MyQuestionnaire> {
  String _character = "Question1";
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ListTile(
          title: const Text('Lafayette'),
          leading: Radio<String>(
            value: "Question1",
            groupValue: _character,
            onChanged: (String value) {
              setState(() {
                _character = value;
              });
            },
          ),
        ),
        ListTile(
          title: const Text('Thomas Jefferson'),
          leading: Radio<String>(
            value: "Question2",
            groupValue: _character,
            onChanged: (String value) {
              setState(() {
                _character = value;
              });
            },
          ),
        ),
      ],
    );
  }
}
