import 'package:flutter/material.dart';
import 'package:islamy/Home_Screen/Taps/classees/Hadeth.dart';

class AhadethDetailsScreen extends StatelessWidget {
  const AhadethDetailsScreen({super.key});
  static const String routeName = "ahadeth";

  @override
  Widget build(BuildContext context) {
    Hadeth args = ModalRoute.of(context)!.settings.arguments as Hadeth;
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("Assets/images/bg3.png"),
          fit: BoxFit.fill,
        ),
      ),
      child: Scaffold(
        appBar: AppBar(
          title: const Center(child: Text("Islamy")),
        ),
        body: Card(
          margin: const EdgeInsets.all(20),
          child: Column(
            children: [
              Text(
                args.title,
                textDirection: TextDirection.rtl,
                style: const TextStyle(
                    fontSize: 24, fontWeight: FontWeight.bold),
              ),
              Container(
                margin: const EdgeInsets.all(10),
                width: width * 0.7,
                height: height * 0.002,
                color: Theme.of(context).colorScheme.primary,
              ),
              Expanded(
                child: SingleChildScrollView(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 10, vertical: 20),
                  child: Text(
                    args.content,
                    textDirection: TextDirection.rtl,
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
