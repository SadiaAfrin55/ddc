
import 'package:flutter/material.dart';

import '../Model/checkModel.dart';
import 'Components/mcqtype.dart';
import 'Components/textfieldtype.dart';
class SurveyHistoryDetails extends StatefulWidget {
  const SurveyHistoryDetails({Key? key}) : super(key: key);

  @override
  _SurveyHistoryDetailsState createState() => _SurveyHistoryDetailsState();
}

class _SurveyHistoryDetailsState extends State<SurveyHistoryDetails> {
  bool value = false;
  List <checkModel> quslist=[];
  final qusModel = [
    checkModel('mcq qus', 'Yes', true, ["Yes","No","yreee","yyy"]),
    checkModel('mcq qus', 'jit', true, ["sadia","sifat","jit","kaiser"]),
    checkModel('textfield', 'randomised words which dont look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isnt anything.', false, ["Yes","No"]),

    checkModel('mcq qus', 'No', true, ["Yes","No"]),

    checkModel('textfield', 'randomised words which dont look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isnt anything.', false, ["Yes","No"]),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            backgroundColor: Colors.white,
            elevation: 1,
            title: const Text('Select Survey',style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
                color: Colors.black
            ),),
            leading: InkWell(
                onTap: (){
                  Navigator.pop(context);
                },
                child: const Icon(Icons.arrow_back,color: Colors.black,)),
          ),
          body: SingleChildScrollView(
            physics: ScrollPhysics(),
            child: Container(
              margin: const EdgeInsets.all(16),
              child: Column(

                children: [
                 ListView.builder(
                   shrinkWrap: true,
                   scrollDirection: Axis.vertical,
                     physics: const NeverScrollableScrollPhysics(),
                   itemCount: qusModel.length,
                     itemBuilder: (context,index){
                       return Column(
                         children: [
                           qusModel[index].checkBoxtype==true?
                           McqTypePage(
                             qus: qusModel[index].title,
                             options: qusModel[index].options,
                             givenAnswer:qusModel[index].givenans
                           ):Container(),

                           qusModel[index].checkBoxtype==false?TextFieldtypePage(
                             qus: qusModel[index].title,
                             ans: qusModel[index].givenans,
                           ):Container(),
                         ],
                       );
                     }
                 ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

}

class checkModel{
  final String title;
  final String givenans;
  final bool checkBoxtype;
  List<String> options = [];

  checkModel(this.title, this.givenans, this.checkBoxtype, this.options);
}
