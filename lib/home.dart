// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, prefer_typing_uninitialized_variables, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

class Praise extends StatefulWidget {
  const Praise({super.key});

  @override
  State<Praise> createState() => _PraiseState();
}

class _PraiseState extends State<Praise> {
  int counter = 0;

  int index=0;
  List<String>list1 = ["الله اكبر", " الحمد لله", " سبحان الله ",];

int number=0;





  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Stack(
          children: [
        Column(
        children: [
        Expanded(
        flex: 1,
          child: Container(
              child: Image.asset(
                'assets/images/WhatsApp.jpg',
                width: double.infinity,
                height: double.infinity,
                fit: BoxFit.fill,
              )),
        ),
        Expanded(
          flex: 7,
          child: Container(
              child: Image.asset(
                'assets/images/WhatsApp Image 2023-09-30 at 14.15.10.jpg',
                fit: BoxFit.cover,
                height: double.infinity,
                width: double.infinity,
              )),
        ),
        ],
      ),
      Container(
          height: double.infinity,
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
            SizedBox(
            height: 30,
          ),
          Text("  لاحول ولا قوة الا بالله  ",
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
            ),
          ),
          SizedBox(
            height: 185,
          ),
          Text(list1[index],style: TextStyle(color:Colors.amberAccent,fontSize: 30,fontWeight: FontWeight.w700,),),
          SizedBox(
            height: 15,
          ),
          Container(
            height: 30,
            width: 130,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(10),
                  topLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                  bottomLeft: Radius.circular(10),
                )),
            child: Center(
              child: Text(
                "عددالتسبيحات",
                style: TextStyle(
                    color: Color(0xffDC143C),
                    fontSize: 20,
                    fontWeight: FontWeight.w700),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text("$counter", style: TextStyle(
            fontSize: 30,color: Colors.amberAccent
          ),),


          SizedBox(
            height: 20,
          ),
          InkWell(
            onTap: () {
              setState(() {
                counter++;
                if(index==0&&counter==34){
                  index=1;
                  counter=0;
                }
                else if(index==1&&counter==34){
                  index=2;
                  counter=0;
                }
                else if (index==2&&counter==34){
                  index=0;
                  counter=0;
                  number++;
                }


              });




            },
            child:Stack(
              children: [
                 Padding(
                   padding: EdgeInsets.only(top: 35,left: 30)
                     ,child: Text( "اضغط",style: TextStyle(color: Colors.white,fontSize: 18),)),
                Image.asset(
                  'assets/icons/icons8-circular-100 (2).png', color: Colors.white,),

              ],
            ),
          ),





      SizedBox(height: 50,),
    Row(
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
    TextButton(onPressed: (){
    setState(() {
      counter=0;
      index=0;
      number=0;

    });
    },
    child:Text("البدء من جديد",style:TextStyle(color:Colors.white,fontSize: 20) ,)
    ),
    SizedBox(width: 133,),
     Text( "$number:الدور رقم",style: TextStyle(color: Colors.white,fontSize: 20),),



    ],
    ),


    ],
    ),
    ),
    ],
    )
    ,
    )
    ,
    );
  }
}
