import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_gda/pages/home.dart';
import 'package:my_gda/pages/monthly.dart';
import 'package:my_gda/pages/questionnaire.dart';
import 'package:my_gda/pages/weekly.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: "/",
    routes: {
      "/": (context) => Home(),
      "/choose_questionnaire": (context) => Questionnaire(),
      "/weekly": (context) => WeeklyForm(),
      "/monthly": (context) => MonthlyForm(),
    },
  ));
}
