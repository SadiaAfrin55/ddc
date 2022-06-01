
import 'package:flutter/material.dart';

import '../Widget/survey_card.dart';
class RadioBtn extends StatefulWidget {
  const RadioBtn({Key? key}) : super(key: key);

  @override
  _RadioBtnState createState() => _RadioBtnState();
}

class _RadioBtnState extends State<RadioBtn> {
  bool isClicked = true;
  int? selected;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    selected = 0;
  }
  setSelectedRadio(int val){
    setState(() {
      selected = val;
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
                          child: Column(
                            children: [
                              InkWell(
                                onTap:(){

                                },
                                child: Container(
                                  height: 46,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    color: const Color(0xFFF7F8F8),
                                  ),
                                  child: Row(
                                    children: [
                                      Radio(
                                          value: 1,
                                          groupValue: selected,
                                          onChanged: (val){
                                            setState(() {
                                              setSelectedRadio(val as int);
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
                                        value: 2,
                                        groupValue: selected,
                                        onChanged: (val){
                                          setState(() {
                                            setSelectedRadio(val as int);
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
                        ),

                      ],
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: InkWell(
                    onTap: (){
                      Navigator.pushNamed(context, '/MultipleCheckbox');
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
