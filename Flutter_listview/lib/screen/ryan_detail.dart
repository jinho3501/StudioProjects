import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_listview/model/ryan.dart';

class RyanDetail extends StatelessWidget {
  // const RyanDetail({super.key, required this.index, required this.imgPath, required this.ryanName});
  // final int index;
  // final String imgPath;
  // final String ryanName;

  const RyanDetail({super.key , required this.ryanModel});
  final RyanModel ryanModel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('${ryanModel.index+1}번 째'),),
      body: Center(
        child: Column(
          children: [
            Image.asset('${ryanModel.imgPath}'),
            SizedBox(
              width: 10,
            ),
            Text('${ryanModel.ryanName}')
          ],
        ),
      ),
    );
  }
}
