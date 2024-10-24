import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_onboarding_slider/flutter_onboarding_slider.dart';
import 'package:flutter_setting/screen/ex_bottom.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      home: ExBottom(),
    );
  }
}
class ExToast extends StatelessWidget {
  const ExToast({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: ElevatedButton(onPressed: (

          ){Fluttertoast.showToast(
          msg: "조금 뒤 사라집니다.",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.BOTTOM,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.grey,
          textColor: Colors.white,
          fontSize: 16.0
      );}, child: Text("버튼")
      )
      ),
    );
  }
}

class ExAnimate extends StatelessWidget {
  const ExAnimate({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child:
      Container(
        color: Colors.white,
        child: SizedBox(
          width: 260.0,
          child: TextLiquidFill(
            text: 'Byte-King',
            waveColor: Colors.blueAccent,
            boxBackgroundColor: Colors.redAccent,
            textStyle: TextStyle(
              fontSize: 80.0,
              fontWeight: FontWeight.bold,
            ),
            boxHeight: 300.0,
          ),
        ),
      )
      ),
    );
  }
}

class ONboading extends StatelessWidget {
  const ONboading({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: OnBoardingSlider(
        headerBackgroundColor: Colors.white,
        finishButtonText: 'Register',
        finishButtonStyle: FinishButtonStyle(
          backgroundColor: Colors.black,
        ),
        skipTextButton: Text('Skip'),
        trailing: Text('Login'),
        background: [
          // 디바이스의 가로길이/ 세로길이 알아내기
          // MediaQuery.of(context).size.width
          Image.asset('images/page1.jpg', width: MediaQuery.of(context).size.width,),
          Image.asset('images/page2.jpg', width: MediaQuery.of(context).size.width,),
        ],
        totalPage: 2,
        speed: 1.8,
        pageBodies: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 40),
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 480,
                ),
                Text('Description Text 1'),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 40),
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 480,
                ),
                Text('Description Text 2'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
