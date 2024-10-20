import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islamy/quran_details/widgets/verseWidget.dart';

class QuranDetailsScreen extends StatefulWidget {
  QuranDetailsScreen({super.key});
  static const String routeName = "qurandetails";

  @override
  State<QuranDetailsScreen> createState() => _QuranDetailsScreenState();
}

class _QuranDetailsScreenState extends State<QuranDetailsScreen> {
  List<String> Lines = [];

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    QuranDetailsArgs args = ModalRoute.of(context)?.settings.arguments as QuranDetailsArgs;
    loadFile(args.index);
    
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("Assets/images/bg3.png"),
          fit: BoxFit.fill,
        ),
      ),
      child: Scaffold(
        appBar: AppBar(
          title: Center(child: Text("Islamy")),
        ),
        body: Card(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("سوره ${args.name}",textDirection: TextDirection.rtl, style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
                  Image.asset(
                    "Assets/images/radio_blue.png",
                    height: 40, 
                    width: 40,
                    color: Theme.of(context).colorScheme.primary,
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.all(10),
                width: width*0.7,
                height: height*0.002,
                color: Theme.of(context).colorScheme.primary,
              ),
              Expanded(
                child:Container(
                  padding:const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                  child:  Lines.isEmpty
                  ? const Center(child: CircularProgressIndicator())
                  : ListView.separated(
                      itemBuilder: (context, index) => VerseWidget(
                        verse: Lines[index],
                        verseNumber: index + 1,
                      ),
                      separatorBuilder: (context, index) => const Divider(),
                      itemCount: Lines.length,
                    ),
                )
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> loadFile(int index) async {
    String fileContent = await rootBundle.loadString("Assets/files/${index + 1}.txt");
    Lines = fileContent.split("\n");
    setState(() {
      
    });
  }
}

class QuranDetailsArgs {
  final String name;
  final int index;

  QuranDetailsArgs({required this.name, required this.index});
}
