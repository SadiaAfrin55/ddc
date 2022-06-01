
import 'package:flutter/material.dart';
class TextFieldtypePage extends StatelessWidget {
  final String? qus;
  final String? ans;
  const TextFieldtypePage({this.qus,this.ans,Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('$qus',style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: Color(0xFF232C2E),
          ),),
          const SizedBox(height: 16,),
          Container(
            padding: const EdgeInsets.all(16),
            height: 116,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
               color: const Color(0xFFF7F8F8),
              //color: Colors.lightBlue
            ),
            child: Text('$ans',style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w400,
              color:  Color(0xFF232C2E)
            ),),
          ),

        ],
      ),
    );
  }
}
