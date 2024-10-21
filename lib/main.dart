import 'package:flutter/material.dart';
import 'Home_Screen/Home_Screen.dart';
import 'ahadeth_details/ahadeth_details_screen.dart';
import 'quran_details/quran_details.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Islamy',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.transparent,
        bottomNavigationBarTheme:const BottomNavigationBarThemeData(
          unselectedIconTheme: IconThemeData(
            color: Colors.white,
            size: 30,
            ),
            selectedIconTheme:  IconThemeData(
            color: Colors.black,
            size: 30,
            ),
            selectedItemColor:  Colors.black,
            unselectedItemColor: Colors.white,
        ),
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.deepPurple,
          primary: Color(0xffB7935F),
          secondary: Color(0xffB7935F).withOpacity(0.57),
          onPrimary: Colors.white,
          onSecondary: Colors.black
          ),
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.transparent,
          elevation: 0,
          titleTextStyle: TextStyle(
            fontSize: 30,
            color: Colors.black,
            fontWeight: FontWeight.bold
          ),
          
        ),
        dividerTheme: DividerThemeData(
          color: Color(0xffB7935F),
          thickness: 2,
        ),
        cardTheme: CardTheme(
          margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                    color: Colors.white.withOpacity(0.6),
          surfaceTintColor: Colors.white.withOpacity(0.2),
          elevation: 30
        ),
        useMaterial3: true
      ),
      initialRoute: MyHomePage.routeName,
      routes: {
        MyHomePage.routeName:(_)=> MyHomePage(),
        QuranDetailsScreen.routeName:(_) => QuranDetailsScreen(),
        AhadethDetailsScreen.routeName:(_) => AhadethDetailsScreen()
      },
        
      
    );
  }
}

