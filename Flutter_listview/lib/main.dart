import 'package:flutter/material.dart';
import 'package:flutter_listview/screen/ryan_list.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      home: ExRyan(),
    );
  }
}

var intList = List<int>.generate(100, (index1) => index1++, growable: false);

class ExVertical extends StatelessWidget {
  const ExVertical({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: ListView.builder(
              itemCount: intList.length,
              itemBuilder: (_, index){
              print(index);
            return Container(
              margin: EdgeInsets.all(10),
              height: 50,
              color: Colors.red[200],
              child: Center(
                child: Text('${intList[index]}번째 리스트'),
              ),
            );
          })),
    );
  }
}
class ExHorizontal extends StatelessWidget {
  const ExHorizontal({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: ListView.builder(
        scrollDirection: Axis.horizontal,
          itemCount: intList.length,
          itemBuilder: (_,index){
            return Container(
              margin: EdgeInsets.all(10),
              height: 50,
              color: Colors.green,
              child: Text('${intList[index]}번 째'),
            );
          })),
    ) ;
  }
}
class ExCountGrid extends StatelessWidget {
  const ExCountGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              childAspectRatio: 1/1.3,
              mainAxisSpacing: 10,
              crossAxisSpacing: 1
          ),
          itemBuilder: (_,index){
            return Container(
              margin: EdgeInsets.all(5),
              height: 50,
              color: Colors.grey,
              child: Text('${intList[index]}번'),
            );
          })),
    );
  }
}
class ExtentGrid extends StatelessWidget {
  const ExtentGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child:
      GridView.builder(
          itemCount: intList.length,
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(maxCrossAxisExtent: 100),
          itemBuilder:
              (_,index){
        return Container(
          height: 50,
          color: Colors.lightBlueAccent,
          margin: EdgeInsets.all(5),
          child: Text('${intList[index]}번 째'),
        );
          })),
    );
  }
}
