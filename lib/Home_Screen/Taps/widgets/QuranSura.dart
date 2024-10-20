import 'package:flutter/material.dart';
import 'package:islamy/quran_details/quran_details.dart';

class QuranSuraWidjet extends StatelessWidget {
  const QuranSuraWidjet({super.key,required this.name,required this.number, required this.index});
  final String name;
  final int number;
  final int index;
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return  InkWell(
      onTap: (){
        Navigator.of(context).pushNamed(QuranDetailsScreen.routeName,
         arguments: QuranDetailsArgs(
          name: name,
          index: index
         )); 
      },
      child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Expanded(
                        child: Center(
                          child: Text(
                            name,  // Surah Name
                            style: TextStyle(fontSize: 18),
                          ),
                        ),
                      ),
                      Container(
                    color: Theme.of(context).colorScheme.primary,
                    width: 3,
                    height: 0.08*height,
                  ),
                      Expanded(
                        child: Center(
                          child: Text(
                            number.toString(),  // Number of ayahs
                            style: TextStyle(fontSize: 18),
                          ),
                        ),
                      ),
                    ],
                  ),
    );
  }
}