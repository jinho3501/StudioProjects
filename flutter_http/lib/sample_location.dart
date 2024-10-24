import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

class SampleLocation extends StatelessWidget {
  const SampleLocation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: ElevatedButton(onPressed: (){
            getLocation();
          }, child: Text('위치'))),

    );
  }
}
void getLocation()async{
  await Geolocator.requestPermission();
  Position position = await Geolocator.getCurrentPosition();
  print(position);
  print(position.latitude);
  print(position.longitude);
}