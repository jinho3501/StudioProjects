import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_listview/model/ryan.dart';
import 'package:flutter_listview/screen/ryan_detail.dart';


var ryanName = ['리틀 라이언', '반짝 라이언', '하트하트 라이언'
  , '춘식이와의 만남', '룸메는 춘식이', '좋구만유'];

var imgList = [ 'images/ryan1.jpg',
  'images/ryan2.png',
  'images/ryan3.jpg',
  'images/ryan4.png',
  'images/ryan5.png',
  'images/ryan6.jpg',
];

class ExRyan extends StatefulWidget {
  const ExRyan({super.key});

  @override
  State<ExRyan> createState() => _ExRyanState();
}

class _ExRyanState extends State<ExRyan> {
  void showPopup(context,image,name,index){
    showDialog(context:context,builder: (_){
      return Dialog(
        child: Container(
          width: MediaQuery.of(context).size.width*0.7,
          height: 380,
          decoration:  BoxDecoration(borderRadius: BorderRadius.circular((10))),

          child: Column(
            children: [
              SizedBox(height: 30,),
              Image.asset(image ,width: 200, height: 200,),
              SizedBox(height: 15,),
              Text(name),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(onPressed: (){
                    setState(() {
                      imgList.removeAt(index);
                      ryanName.removeAt(index);
                    });
                    Navigator.pop(context);
                  }, child: Text('삭제하기'),
                    style: ElevatedButton.styleFrom(backgroundColor: Colors.grey),
                  ),
                  SizedBox(width: 15,),
                  ElevatedButton(onPressed: (){
                    Navigator.pop(context);
                  }, child: Text('close'),
                    style: ElevatedButton.styleFrom(backgroundColor: Colors.lightBlue),
                  )
                ],
              )
            ],
          ),
        ),
      );
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: (){}),
      body: SafeArea(child: ListView.builder(
        itemCount: imgList.length,
          itemBuilder: (_,index){
          return GestureDetector(
            onTap: (){
              // Navigator.push(context,
              //     MaterialPageRoute(
              //         builder: (_)=> RyanDetail(
              //           ryanName : ryanName[index],
              //           index : index+1,
              //           imgPath: imgList[index],
              //         )
              //     ));
              RyanModel rm = RyanModel((imgList[index]), ryanName[index], index);
              Navigator.push(context,
                MaterialPageRoute(builder: (_)=> RyanDetail(
                  ryanModel: rm)
                )
              );
            },
            onLongPress: (){
              print(index);
              showPopup(context,imgList[index],ryanName[index],index);
            },
            child: Card(
              child: Row(
                children: [
                  Expanded(child: Image.asset(imgList[index])),
                  Expanded(
                    child: Column(
                      children: [
                        Text('${ryanName[index]}'),
                        Text('${index+1}번째 라이언')
                      ],
                    ),
                  )
                ],
              ),
            ),
          );
          })),
    );
  }
}



