
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../Widget/surveyHistory_card.dart';
class PageOne extends StatefulWidget {
  const PageOne({Key? key}) : super(key: key);

  @override
  _PageOneState createState() => _PageOneState();
}

class _PageOneState extends State<PageOne> {
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
              leading: InkWell(
                  onTap: (){},
                  child: Icon(Icons.arrow_back,color: Colors.black,)),
            ),
            body: Container(
              child: Column(
                children: [
                  Container(
                    color: Colors.white,
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const CircleAvatar(
                            radius: 35,
                            backgroundColor: Colors.lightGreen,
                          ),
                          const SizedBox(height: 12,),
                          const Text('B N General Store',style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                            color: Colors.black
                          ),),
                          const SizedBox(height: 4,),
                          const Text('Route- 27 no. Road Dhanmondi, Zigatola',style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: Color(0xFF727272)
                          ),),
                          const SizedBox(height: 16,),
                          InkWell(
                            onTap: (){
                              Navigator.pushNamed(context, '/pageTwo');
                            },
                            child: Container(
                              width: MediaQuery.of(context).size.width*0.4,
                              height: 48,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(6),
                                color: const Color(0xFF1479FF),
                              ),
                              child:const Center(
                                child: Text('Start Survey',style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white
                                ),),
                              ),
                            ),
                          ),
                          const SizedBox(height: 24,),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 20,),
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.symmetric(horizontal: 16),
                      width: MediaQuery.of(context).size.width,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children:  [
                          const Text('History',style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w500
                          ),),
                          InkWell(
                              onTap: (){
                                Navigator.pushNamed(context, '/SurveyDetails');
                              },
                              child: SurveyHistoryCard()),

                          const SizedBox(height: 30,),
                          Center(child: SvgPicture.asset('assets/noData.svg')),

                        ],
                      ),
                    ),
                  ),

                ],
              ),
            ),
          )
      ),
    );
  }
}
