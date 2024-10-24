import 'package:flutter/material.dart';
import 'package:flutter_widjet/Ex02_widjet.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Ex01Stateful(),
    );
  }
}

class Ex01Widjet extends StatelessWidget {
  const Ex01Widjet({super.key});

  @override
  Widget build(BuildContext context) {
    // return 코드가 화면에 띄어줄 코드
    // return 코드에 화면 구성 widget
    return Scaffold(
      appBar: AppBar(
        title: Text("플러터 앱"),
        backgroundColor: Colors.greenAccent[100],
      ),
      body: Row(
        children: [
          Text("안녕하세요",
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 24,
                color: Colors.lightBlueAccent[100],
          
            ),),
          Icon(Icons.person,
          size: 35,
          color: Colors.grey,)
        ],
      ),

    );

  }
}

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

class Ex03Container extends StatelessWidget {
  const Ex03Container({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // container - 자식 위젯의 크기를 지정 해주는 위젯
      body: SafeArea(
          child: Column(
            children: [
              Container(
                width: 400,
                height: 300,
                alignment: Alignment.center,
                // magin을 따로따로 저장 EdgeInsets.fromLTRB
                // margin: EdgeInsets.fromLTRB(16, 16, 16, 16),
                // 한번에 다 하고 싶으면 all
                margin: EdgeInsets.all(16),
                // only()
                // margin: EdgeInsets.only(top: 16,left: 16),
                decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(40)
                ),
                child: Text("안녕하세요",
                    // textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 24)
                ),
              ),
              Container(
                width: 400,
                height: 300,
                alignment: Alignment.center,

                // magin을 따로따로 저장 EdgeInsets.fromLTRB
                // margin: EdgeInsets.fromLTRB(16, 16, 16, 16),
                // 한번에 다 하고 싶으면 all
                margin: EdgeInsets.all(16),
                // only()
                // margin: EdgeInsets.only(top: 16,left: 16),
                decoration: BoxDecoration(
                    color: Colors.orange,
                  // borderRadius: BorderRadius.circular(40)
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50),
                      bottomRight: Radius.circular(50)
                  ),
                ),
                child: Text("안녕하세요",
                  // textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 24)
                      ),
              ),
              ElevatedButton(onPressed: (){
                print("HI");
              },  child: Text("버튼"))
            ],
          )
      ),
    );
  }
}

class Ex04Container extends StatelessWidget {
  const Ex04Container({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: SafeArea(
          child: Container(
            // 가로,세로 를 꽉 채우는 코드 - double.infinty
            width: double.infinity,
            height: 100,
            margin: EdgeInsets.all(16),
            decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(10),
            ),
          )
      ),
    );
  }
}

class Ex05sidesBox extends StatelessWidget {
  const Ex05sidesBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Row(
          children: [
            Text("hello"),
            SizedBox(width: 120,),
            Text("world")
            // Container(
            //   width: 120,
            //   height: 120
          ],
        ),
      ),);
  }
}

class Ex06Kakao extends StatelessWidget {
  const Ex06Kakao({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
            width: double.infinity,
            height: 40,
            margin: EdgeInsets.all(16),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.yellowAccent
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset('image/klogo.png',
                width: 30,
                    height: 30,),
                SizedBox(width: 20,),
                Text("카카오톡으로 로그인하기")
                
              ],
            ),
          )),
    );
  }
}

class Ex07Flexible extends StatelessWidget {
  const Ex07Flexible({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
            children: [
              Text("flexible, expended 미사용 했을 때"),
              Row(
                children: [
                  Flexible(
                    fit: FlexFit.loose,
                    child: Container(
                      width: 100,
                      height: 50,
                      color: Colors.red,
                    ),
                  ),
                  Flexible(
                    fit: FlexFit.loose,
                    child: Container(
                      width: 200,
                      height: 50,
                      color: Colors.yellow,
                    ),
                  )
                ],
              ),
              Text("flexible 사용 했을 때"),
              Row(
                children: [
                  Flexible(
                    // fit : loose / tight
                    // loose : 빈공간있을 경우 빈공간 출력
                    // tight : 빈공간 출력 X
                    fit: FlexFit.tight,
                    child: Container(
                      width: 300,
                      height: 50,
                      color: Colors.red,
                    ),
                  ),
                  Flexible(
                    fit: FlexFit.loose,
                    child: Container(
                      width: 200,
                      height: 50,
                      color: Colors.yellow,
                    ),
                  )
                ],
              ),
              Text("flexible 사용 했을 때"),
              Row(
                children: [
                  Flexible(
                    // fit : loose / tight
                    // loose : 빈공간있을 경우 빈공간 출력
                    // tight : 빈공간 출력 X
                    flex: 3,
                    child: Container(
                      width: 300,
                      height: 50,
                      color: Colors.red,
                    ),
                  ),
                  Flexible(
                    flex: 2,
                    child: Container(
                      width: 200,
                      height: 50,
                      color: Colors.yellow,
                    ),
                  ),
                  Flexible(
                    flex: 1,
                    child: Container(
                      width: 200,
                      height: 50,
                      color: Colors.orange,
                    ),
                  )
                ],
              ),
              Text("flexible 사용 했을 때"),
              Row(
                children: [
                  Expanded(
                    // fit : loose / tight
                    // loose : 빈공간있을 경우 빈공간 출력
                    // tight : 빈공간 출력 X
                    flex: 3,
                    child: Container(
                      width: 300,
                      height: 50,
                      color: Colors.red,
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Container(
                      width: 200,
                      height: 50,
                      color: Colors.yellow,
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      width: 200,
                      height: 50,
                      color: Colors.orange,
                    ),
                  )
                ],
              )

            ],
          )),
    );
  }
}

TextEditingController emailCon =  TextEditingController();
TextEditingController pwCon = TextEditingController();

class Ex08TextField extends StatelessWidget {
  const Ex08TextField({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: (){
          FocusScope.of(context).unfocus();
        },

        child: SafeArea(
          child: SingleChildScrollView( // 화면 스크롤 주는법
            child: Column(
              children: [
                Image.asset('image/littleryan.gif'),
                SizedBox(height: 200,),
                TextField(
                  controller: emailCon,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    label: Row(
                      children: [Icon(Icons.account_circle), Text("email")],
                    ),
                    hintText: "email을 입력해주세요",
                    hintStyle: TextStyle(color: Colors.grey[300]),
                  ),
                ),
                TextField(
                  controller: pwCon,
                  //비밀번호 입력하는 것처럼 만들기 -- keyboardtype에는 존재하지 않음
                  obscureText: true, // true -> 비밀번호처럼 ****
                  decoration: InputDecoration(
                      label: Row(
                        children: [Icon(Icons.key), Text("password")],
                      )
                  ),
                ),
                ElevatedButton(onPressed: (){
                  print(emailCon.text);
                  print(pwCon.text);
                  print("hello");
                }, child: Text("로그인"))
              ],
            ),
          ),
        ),
      ),
    );
  }
}


class Ex09Row extends StatelessWidget {
  const Ex09Row({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
            width: double.infinity,
            height :100,
            color: Colors.green,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(width: 40,height:40, color: Colors.red,),
                Container(width: 40,height:40, color: Colors.orange,),
                Container(width: 40,height:40, color: Colors.yellow, )
              ],
            ),
          )),
    );
  }
}

class Ex10Stack extends StatelessWidget {
  const Ex10Stack({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Stack(
            alignment: Alignment.center,
        children: [
          Container(
            width: 250,
            height: 250,
            color: Colors.red
          ),
          Container(
              width: 200,
              height: 200,
              color: Colors.orange
          ),
          Container(
              width: 150,
              height: 150,
              color: Colors.yellow
          ),
          Container(
              width: 100,
              height: 100,
              color: Colors.green
          ),
          Container(
              width: 50,
              height: 50,
              color: Colors.blue
          )
        ],
      )),
    );
  }
}

class Ex01Stateful extends StatefulWidget {
  const Ex01Stateful({super.key});

  @override
  State<Ex01Stateful> createState() => _Ex01StatefulState();
}

class _Ex01StatefulState extends State<Ex01Stateful> {
  int i = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child:
      Center(
        child: Column(
          children: [
            Text('$i'),
            ElevatedButton(onPressed: (){
              setState(() {
                i++;
              });
              print(i);
            }, child: Text("click"))
          ],
        ),
      )),
    );
  }
}
