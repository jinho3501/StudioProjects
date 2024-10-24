import 'package:flutter/material.dart';
import 'package:flutter_http/model/sample_model.dart';
import 'package:http/http.dart';


List<Sample> list1 = [];


class SampleData extends StatelessWidget {
  const SampleData({super.key});

  @override
  Widget build(BuildContext context) {

    getJsonData();
    //간헐적으로 데이터가 들어가는 이유
    // 데이터를 가지고오는(파싱해오는) 시간 != 화면을 그리는 시간
    //데이터를 모두 가지고온 후에 화면을 그려야하는데
    // 데이터 호출, 화면 그리기가 동시에 진행

    return Scaffold(
      //데이터를 그리기 위해 대기하는 위젯 - FutureBuilder
      body: SafeArea(
          child: FutureBuilder(
              future: getJsonData() , // 함수 --> 함수 실행 완료시 까지 대기
              builder: (context, snapshot) {
                //snapshot 데이터의 유무
                if( !snapshot.hasData){
                  return CircularProgressIndicator();
                }else{
                  return ListView.builder(
                      itemCount: list1.length,
                      itemBuilder: (_,index){
                        return ListTile(
                          title: Text('${list1[index].name}'),
                          subtitle: Text('${list1[index].address.city}'),
                          leading: Icon(Icons.account_circle),
                          trailing: Icon(Icons.phone_android),
                        );

                      });
                }
              }
          )

      ),
    );
  }
}


Future<List<Sample>> getJsonData() async{
  //1. 접속할 url 작성
  String url = "https://jsonplaceholder.typicode.com/users";
  // 매개변수 url -> URI 파싱
  Response res = await get(Uri.parse(url));
  //statusCode --> 200 400 500
  print(res.statusCode);
  print(res.body);
  // res.body 문자열 로 반환
  // 문자열 -> k:v(맵)
  list1 = sampleFromJson(res.body);
  for(var i in list1){
    print(i.name);
  }
  return list1;
  // print(list1[0].name);




}