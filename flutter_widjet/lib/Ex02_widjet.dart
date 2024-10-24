import 'package:flutter/material.dart';



class Ex02Widjet extends StatelessWidget {
  const Ex02Widjet({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
            children: [
              Text("고 윤 정"),
              ElevatedButton(onPressed: (){
                print("버튼 클릭!");
              }, child: Text("버튼")),
              Image.asset('image/jung.png')
            ],
          )),
    );
  }
}