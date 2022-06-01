
import 'package:flutter/material.dart';
class McqTypePage extends StatelessWidget {
  final String? qus;
  final List<String>? options;
  final String? givenAnswer;
  const McqTypePage({this.qus,this.options,this.givenAnswer,Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children:  [
              Text('$qus',style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: Color(0xFF232C2E),
              ),),
              const SizedBox(height: 16,),
              Column(
                children: options!.map((e) => Container(
                  height: 46,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: const Color(0xFFF7F8F8),
                  ),
                  child: Row(
                    children: [
                      Radio(
                          value: 1,
                          groupValue: e==givenAnswer,
                          onChanged: (val){}
                      ),
                      Text(e,style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color:Color(0xFF232C2E)
                      ),),
                    ],
                  ),
                )).toList(),
              ),

            ],
          ),
        ),

        // Container(
        //   margin: const EdgeInsets.only(top: 24),
        //   child:  Text('$qus',style: const TextStyle(
        //     fontSize: 16,
        //     fontWeight: FontWeight.w600,
        //     color: Color(0xFF232C2E),
        //   ),),
        // ),
        const SizedBox(height: 16,),
      ],
    );
  }
}
