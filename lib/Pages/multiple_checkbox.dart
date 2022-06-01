
import 'package:flutter/material.dart';

import '../Widget/survey_card.dart';
class MultipleCheckbox extends StatefulWidget {
  const MultipleCheckbox({Key? key}) : super(key: key);

  @override
  _MultipleCheckboxState createState() => _MultipleCheckboxState();
}

class _MultipleCheckboxState extends State<MultipleCheckbox> {
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
          backgroundColor: Color(0xFFF6F6F6),
          appBar: AppBar(
            backgroundColor: Colors.white,
            elevation: 0,
            title: const Text('Take Survey',style: TextStyle(
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
            margin: const EdgeInsets.only(top: 10),
            child: Column(
              children: [
                Expanded(
                  flex: 8,
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    padding: const EdgeInsets.only(left: 16,right: 16,top: 10),
                    //color: Colors.lightBlue,
                    color: Colors.white,
                    child: Column(
                       crossAxisAlignment: CrossAxisAlignment.start,
                      children:  [
                        const Text('Question : 1/6',style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: Color(0xFF2D2D2D),
                        ),),
                        const SizedBox(height: 24,),
                        Expanded(
                          flex: 1,
                          child: Container(
                            //color: Colors.limeAccent,
                            child: const Text('2. Dose thew retailer compel you to do his personal task?',style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: Color(0xFF232C2E),
                            ),),
                          ),
                        ),

                        Expanded(
                          flex: 8,
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
                      ],
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: InkWell(
                    onTap: (){
                      Navigator.pushNamed(context, '/TextfieldPage');
                    },
                    child: Column(
                      children: [
                        Container(
                          margin: const EdgeInsets.symmetric(horizontal: 16),
                          width: MediaQuery.of(context).size.width,
                          height: 50,
                          decoration: BoxDecoration(
                              color: Color(0xFF1479FF),
                              borderRadius: BorderRadius.circular(6)
                          ),
                          child: const Center(
                            child: Text('Start',style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: Colors.white
                            ),),
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
