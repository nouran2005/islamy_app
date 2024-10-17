import 'package:flutter/material.dart';

class QuranSuraWidjet extends StatelessWidget {
  const QuranSuraWidjet({super.key, this.name, this.number});
  final name;
  final number;
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return  Row(
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
                          number,  // Number of ayahs
                          style: TextStyle(fontSize: 18),
                        ),
                      ),
                    ),
                  ],
                );
  }
}