
import 'package:flutter/material.dart';
class McqTypePage extends StatelessWidget {
  final String? qus;
  final String? optionsOne;
  final String? optionsTwo;
  final String? ansClicked;
  const McqTypePage({this.qus,this.optionsOne,this.optionsTwo,this.ansClicked,Key? key}) : super(key: key);

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
                children: [
                  Container(
                    height: 46,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: const Color(0xFFF7F8F8),
                    ),
                    child: Row(
                      children: [
                        Radio(
                            value: 1,
                            groupValue: ansClicked,
                            onChanged: (val){}
                        ),
                         Text('$optionsOne',style: const TextStyle(
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
                            value: 2,
                            groupValue: ansClicked,
                            onChanged: (val){}
                        ),
                         Text('$optionsTwo',style: const TextStyle(
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
