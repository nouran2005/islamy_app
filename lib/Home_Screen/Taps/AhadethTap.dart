import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islamy/Home_Screen/Taps/classees/Hadeth.dart';
import 'package:islamy/ahadeth_details/ahadeth_details_screen.dart';

class AhadethTap extends StatefulWidget {
  AhadethTap({super.key});

  @override
  State<AhadethTap> createState() => _AhadethTapState();
}

class _AhadethTapState extends State<AhadethTap> {
  @override
  Widget build(BuildContext context) {
    return ahadethList.isEmpty
    ?const Center(child: CircularProgressIndicator())
    :Column(
      children: [
        Image.asset("Assets/images/hadith_header.png"),
        Divider(),
        Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const Expanded(
                  child: Center(
                    child: Text(
                      'Ahadeth',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w600,
                        ),
                    ),
                  ),
                ),
                
              ],
            ),
          ),
          Divider(),
        Expanded(
          child: ListView.separated(
              itemBuilder: (context, index) =>InkWell(
                onTap: (){
                  Navigator.pushNamed(context, AhadethDetailsScreen.routeName, arguments: ahadethList[index]);
                },
                child: Text(ahadethList[index].title, textAlign: TextAlign.center,
                 style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w600,
                          ),
                ),
              ),
              separatorBuilder: (context, index) => Divider(height: 0, thickness: 0.3,), 
              itemCount: ahadethList.length
              ),
        ),
      ],
    );
  }

  List<Hadeth> ahadethList =[];

  readAhadethFile()async{
    String fileContent = await rootBundle.loadString("Assets/files/ahadeth.txt");
    List<String> ahadrthFileData = fileContent.split('#');
    for (int i = 0; i < ahadrthFileData.length; i++) {
      List<String> hadethLines = ahadrthFileData[i].trim().split("\n");
      String hadethTitle =hadethLines[0];
      hadethLines.removeAt(0);
      String hadethContent = hadethLines.join(" ");
      ahadethList.add(Hadeth(title: hadethTitle, content: hadethContent));
    }
    setState(() {
      
    });
  }
  @override
    void initState() {
      super.initState();
          readAhadethFile();
  }
}