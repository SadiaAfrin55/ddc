
import 'package:flutter/material.dart';

import '../Widget/Multipleline_textfield.dart';
class SurveyDetails extends StatefulWidget {
  const SurveyDetails({Key? key}) : super(key: key);

  @override
  _SurveyDetailsState createState() => _SurveyDetailsState();
}

class _SurveyDetailsState extends State<SurveyDetails> {
  TextEditingController ansController= TextEditingController();
  bool isClicked = true;
  Map<String, bool> List = {
    'Akij Biri' : false,
    'Malboro' : false,
    'Sadhona Biri' : false,
  };
  var holder_1 = [];
  getItems(){
    List.forEach((key, value) {
      if(value == true)
      {
        holder_1.add(key);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SafeArea(
        child: Scaffold(
          //backgroundColor: Color(0xFFF6F6F6),
          backgroundColor: Colors.white,
          appBar: AppBar(
            backgroundColor: Colors.white,
            elevation: 0.5,
            title: const Text('Survey Details',style: TextStyle(
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
          body: Container(
            margin: const EdgeInsets.only(top: 16,left: 16,right: 16),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height,
                    child: Column(
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children:  [
                              const Text('2. Dose thew retailer compel you to do his personal task?',style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: Color(0xFF232C2E),
                              ),),
                              const SizedBox(height: 16,),
                              Column(
                                children: [
                                  Container(
                                    height: 46,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8),
                                      color: Color(0xFFF7F8F8),
                                    ),
                                    child: Row(
                                      children: [
                                        Radio(
                                            value: 1,
                                            groupValue: 1,
                                            onChanged: (val){
                                              setState(() {
                                                // setSelectedRadio(val as int);
                                              });
                                            }
                                        ),
                                        const Text('Yes',style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w600,
                                            color:Color(0xFF232C2E)
                                        ),),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(height: 12,),
                                  Container(
                                    height: 46,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8),
                                      color: Color(0xFFF7F8F8),
                                    ),
                                    child: Row(
                                      children: [
                                        Radio(
                                            value: 1,
                                            groupValue: 1,
                                            onChanged: (val){
                                              setState(() {
                                                // setSelectedRadio(val as int);
                                              });
                                            }
                                        ),
                                        const Text('No',style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w600,
                                            color:Color(0xFF232C2E)
                                        ),),
                                      ],
                                    ),
                                  ),
                                ],
                              ),

                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 24),
                          child: const Text('2. Dose thew retailer compel you to do his personal task?',style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Color(0xFF232C2E),
                          ),),
                        ),
                        const SizedBox(height: 16,),
                        Expanded(
                          flex: 4,
                          child : ListView(
                            children: List.keys.map((String key) {
                              return Container(
                                height: 46,
                                margin: const EdgeInsets.only(bottom: 12),
                                decoration: BoxDecoration(
                                    color: const Color(0xFFF7F8F8),
                                    borderRadius: BorderRadius.circular(8)
                                ),
                                child: CheckboxListTile(
                                  controlAffinity: ListTileControlAffinity.leading,
                                  title:  Text(key,style: const TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xFF232C2E),
                                  ),),
                                  value: List[key],
                                  activeColor: Colors.lightBlue,
                                  checkColor: Colors.white,
                                  onChanged: (bool? value) {
                                    setState(() {
                                      List[key] = value!;
                                    });
                                  },
                                ),
                              );
                            }).toList(),
                          ),
                        ),
                        Expanded(
                          flex: 7,
                          child: Form(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children:  [
                                const Expanded(
                                  child: Text('2. Dose thew retailer compel you to do his personal task?',style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xFF232C2E),
                                  ),),
                                ),

                                Expanded(
                                  flex: 5,
                                  child: TextAreaTextField(
                                    controller: ansController,
                                    readOnly: false,
                                    hint: 'jjjj',
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),

                      ],
                    ),
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
