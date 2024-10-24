import 'package:flutter/material.dart';

class ExBottom extends StatefulWidget {
  const ExBottom({super.key});

  @override
  State<ExBottom> createState() => _ExBottomState();
}
int selectedItem = 0;
List<Widget> bodyList=[ExBodyPage1(),ExBodyPage2()];

class _ExBottomState extends State<ExBottom> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: bodyList[selectedItem],
      bottomNavigationBar: BottomNavigationBar(
          items:[
            BottomNavigationBarItem(icon:Icon(Icons.person),label: ""),
            BottomNavigationBarItem(icon: Icon(Icons.chat_bubble),label: "")
          ],
      backgroundColor: Colors.green,
      selectedItemColor: Colors.red,
      unselectedItemColor: Colors.yellowAccent,
      showSelectedLabels: false,
        showUnselectedLabels: false,

        currentIndex: selectedItem,
        onTap: (index){
            setState(() {
              selectedItem = index;
            });
            print(index);
        },
      ),
    );
  }
}

class ExBodyPage1 extends StatelessWidget {
  const ExBodyPage1({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('첫번쨰 코드'),
    );
  }
}

class ExBodyPage2 extends StatelessWidget {
  const ExBodyPage2({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Text('두번쨰 코드'),
    );
  }
}
