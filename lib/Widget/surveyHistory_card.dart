
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
class SurveyHistoryCard extends StatefulWidget {
  const SurveyHistoryCard({Key? key}) : super(key: key);

  @override
  State<SurveyHistoryCard> createState() => _SurveyHistoryCardState();
}

class _SurveyHistoryCardState extends State<SurveyHistoryCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.symmetric(horizontal: 12),
      margin: const EdgeInsets.only(top: 12),
      height: 64,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          //border: Border.all(color: Colors.blue,width: 1),
          color: Colors.white,
      ),
      child: Row(
        children: [
          Expanded(
            flex: 2,
            child: CircleAvatar(
              radius: 20,
              backgroundColor: const Color(0xFFD6E8FF),
              child: SvgPicture.asset('assets/note.svg'),
            ),
          ),
          // const SizedBox(width: 10,),
          Expanded(
            flex: 10,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                 Text('Survey Title',style: TextStyle(
                     fontSize: 16,
                     fontWeight: FontWeight.w500,
                     color: Colors.black
                 ),),
                 const SizedBox(height: 6,),
                Row(
                  children: [
                    Row(
                      children: [
                        SvgPicture.asset('assets/calendar.svg'),
                        const SizedBox(width: 4,),
                        Text('27/02/22',style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: Colors.black
                        ),),
                      ],
                    ),
                    const SizedBox(width: 10,),
                    Row(
                      children: [
                        SvgPicture.asset('assets/clock.svg'),
                        const SizedBox(width: 4,),
                        Text('3:26 am',style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: Colors.black
                        ),),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
