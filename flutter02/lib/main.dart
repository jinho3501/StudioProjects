import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(


      home: Ex03Radio(),
    );
  }
}

class Ex01CheckBox extends StatefulWidget {
  const Ex01CheckBox({super.key});

  @override
  State<Ex01CheckBox> createState() => _Ex01CheckBoxState();
}

List<bool> checkList = [false,false,false];
class _Ex01CheckBoxState extends State<Ex01CheckBox> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
            children: [
              Text("당신의 취미는 무엇입니다까?"),
              // null을 허용하고 싶은 경우 변수,타입 뒤에 ? 사용
              // null이 절대 올수 없을 경우 변수,타입, 뒤에 ! 사용
              CheckboxListTile(
                controlAffinity: ListTileControlAffinity.leading,
                  title: Text("1"),
                  value: checkList[0], onChanged: (v){
                setState(() {
                  checkList[0] = v!;
                });
                print(v);
              }),
              Checkbox(value: checkList[1], onChanged: (v){
                setState(() {
                  checkList[1] = v!;
                });
                print(v);
              }),
              Checkbox(value: checkList[2], onChanged: (v){
                setState(() {
                  checkList[2] = v!;
                });
                print(v);
              }),
            ],
          )
      ),
    );
  }
}

class Ex02SwitchState extends StatefulWidget {
  const Ex02SwitchState({super.key});

  @override
  State<Ex02SwitchState> createState() => _Ex02SwitchStateState();
}
List<bool> switchList = [false,false];
class _Ex02SwitchStateState extends State<Ex02SwitchState> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
            children: [
              Switch(
                  activeColor: Colors.lightBlueAccent,
                  value: switchList[0], onChanged :(v){
                setState(() {
                  switchList[0] = v;
                });
              }),
              Switch(
                activeColor: Colors.redAccent,
                  value: switchList[1], onChanged :(v){
                setState(() {
                  switchList[1] = v;
                });
            })
            ],
          )),
    );
  }
}

class Ex03Radio extends StatefulWidget {
  const Ex03Radio({super.key});

  @override
  State<Ex03Radio> createState() => _Ex03RadioState();
}

enum Gender {Man,Woman}
Gender gender = Gender.Man;
class _Ex03RadioState extends State<Ex03Radio> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: Column(
        children: [
          Text("성별"),
          Row(
            children: [
              Radio(value: Gender.Man, groupValue: gender, onChanged: (g){
                setState(() {
                  gender = g!;
                });
                print(g);
              }),
              Text("남자"),
            ],
          ),
          Row(
            children: [
              Radio(value: Gender.Woman, groupValue: gender, onChanged: (g){
                setState(() {
                  gender= g!;
                });
                print(g);
              }),
              Text("여자")
            ],
          )
        ],
      )),
    );
  }
}

