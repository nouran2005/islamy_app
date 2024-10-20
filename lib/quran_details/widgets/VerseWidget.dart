import 'package:flutter/material.dart';

class VerseWidget extends StatelessWidget {
  VerseWidget({super.key, required this.verse, required this.verseNumber});
  final String verse ;
  final int verseNumber;
  @override
  Widget build(BuildContext context) {
    return Text(verse+"($verseNumber)",
    textAlign: TextAlign.right,
    textDirection: TextDirection.rtl,
    style: TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.w400,
    ),
    );
  }
}