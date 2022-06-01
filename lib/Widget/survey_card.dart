
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
class SurveyCard extends StatefulWidget {
  const SurveyCard({Key? key}) : super(key: key);

  @override
  State<SurveyCard> createState() => _SurveyCardState();
}

class _SurveyCardState extends State<SurveyCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.symmetric(horizontal: 12),
      margin: EdgeInsets.only(top: 12),
      height: 64,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        //border: Border.all(color: Colors.blue,width: 1),
        color: Colors.white
      ),
      child: Row(
        children: [
          CircleAvatar(
            radius: 20,
            backgroundColor: Color(0xFFD6E8FF),
            child: SvgPicture.asset('assets/note.svg'),
          ),
          SizedBox(width: 10,),
          Text('Survey Title',style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
            color: Colors.black
          ),),
        ],
      ),
    );
  }
}
