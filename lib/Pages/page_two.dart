
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../Widget/survey_card.dart';
class PageTwo extends StatefulWidget {
  const PageTwo({Key? key}) : super(key: key);

  @override
  _PageTwoState createState() => _PageTwoState();
}

class _PageTwoState extends State<PageTwo> {
  bool isClicked = true;
  int tapIndex = 0;

  List<String>surveytitle = ['Survey 1','Survey 2','Survey 3'];
  List<String>emptyArr = [];

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
          body: Container(
            margin: const EdgeInsets.only(left: 16,right:16,top: 16),
            child: Column(
              children: [
                Expanded(
                  flex: 8,
                  child: Container(
                    child:ListView.builder(
                        itemCount: surveytitle.length,
                        itemBuilder: (context,index){
                          return InkWell(
                            onTap: (){
                              setState(() {
                                if(emptyArr.contains(surveytitle[index].toString())){
                                  isClicked = isClicked;
                                  emptyArr.remove(surveytitle[index].toString());
                                }else{
                                  emptyArr.add(surveytitle[index].toString());
                                }
                              });
                            },
                            child: Container(
                              width: MediaQuery.of(context).size.width,
                              padding: const EdgeInsets.symmetric(horizontal: 12),
                              margin: const EdgeInsets.only(top: 12),
                              height: 64,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  border: Border.all(color: emptyArr.contains(surveytitle[index].toString())?Colors.lightBlue:Colors.transparent,width: 1),
                                  color: Colors.white
                              ),
                              child: Row(
                                children: [
                                  CircleAvatar(
                                    radius: 20,
                                    backgroundColor: const Color(0xFFD6E8FF),
                                    child: SvgPicture.asset('assets/note.svg'),
                                  ),
                                  const SizedBox(width: 10,),
                                   // ignore: prefer_const_constructors
                                   Text(surveytitle[index].toString(),style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black
                                  ),),
                                ],
                              ),
                            ),
                          );
                        }
                    )
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: InkWell(
                    onTap: (){
                      Navigator.pushNamed(context, '/RadioBtn');
                      setState(() {
                        isClicked = !isClicked;
                      });
                    },
                    child: Column(
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width,
                          height: 50,
                          decoration: BoxDecoration(
                            //color: isClicked?const Color(0xFFCCE2FF):const Color(0xFF1479FF),
                            color: isClicked?const Color(0xFFCCE2FF):const Color(0xFF1479FF),
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
