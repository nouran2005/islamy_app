import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({super.key});
  static const String routeName = "Home";

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int currentIndex = 0 ;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:const BoxDecoration(
        image: DecorationImage(image: AssetImage("Assets/images/bg3.png"),
        fit: BoxFit.fill)
      ),
      child: Scaffold(
        appBar: AppBar(
          title: Center(child: Text("Islami")),
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentIndex,
          onTap: (index){
            setState(() {
              currentIndex =index ;
            });
          },
          items:[
            BottomNavigationBarItem(backgroundColor: Theme.of(context).colorScheme.primary,icon: ImageIcon(AssetImage("Assets/images/moshaf_blue.png")),label: "Quran" ),
            BottomNavigationBarItem(backgroundColor: Theme.of(context).colorScheme.primary,icon: ImageIcon(AssetImage("Assets/images/Path 1.png")),label: "Ahadeth" ),
            BottomNavigationBarItem(backgroundColor: Theme.of(context).colorScheme.primary,icon: ImageIcon(AssetImage("Assets/images/sebha_blue.png")),label: "Tasbeeh" ),
            BottomNavigationBarItem(backgroundColor: Theme.of(context).colorScheme.primary,icon: ImageIcon(AssetImage("Assets/images/radio_blue.png")),label: "Radio" )
          ]
          ),
      ),
    );
  }
}