import 'package:flutter/material.dart';

import 'Pages/multiple_checkbox.dart';
import 'Pages/page_one.dart';
import 'Pages/page_two.dart';
import 'Pages/radio_btn.dart';
import 'Pages/survey_details.dart';
import 'Pages/SurveyHistory/surveyhistory_details.dart';
import 'Pages/textfield_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/pageOne',
      routes: {
        '/pageOne': (context) => PageOne(),
        '/pageTwo': (context) => PageTwo(),
        // '/SurveyDetails': (context) => SurveyDetails(),
        '/SurveyDetails': (context) => SurveyHistoryDetails(),
        '/MultipleCheckbox': (context) => MultipleCheckbox(),
        '/RadioBtn': (context) => RadioBtn(),
        '/TextfieldPage': (context) => TextfieldPage(),
      },
    );
  }
}

