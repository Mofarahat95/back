import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami_2/models/hadeth_model.dart';

class AhadethTab extends StatefulWidget {
  AhadethTab({super.key});

  @override
  State<AhadethTab> createState() => _AhadethTabState();
}

class _AhadethTabState extends State<AhadethTab> {
  List<hadethModel> ahadeth = [];
  @override
  void initState() {
    // TODO: implement initState
    loadAhadethString();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(
          'assets/images/hadith_header.png',
          height: 219,
        ),
        Divider(
          thickness: 3,
          color: Color(0xffB7935F),
        ),
        Text(
          textAlign: TextAlign.center,
          'Ahadeth',
          style: GoogleFonts.elMessiri(
            fontSize: 25,
            fontWeight: FontWeight.w600,
            color: Color(0xff242424),
          ),
        ),
        Divider(
          thickness: 3,
          color: Color(0xffB7935F),
        ),
        Expanded(
          child: ListView.builder(
            itemBuilder: (context, index) => Text(
              ahadeth[index].title,
            ),
            itemCount: ahadeth.length,
          ),
        ),
      ],
    );
  }

  loadAhadethString() async {
    String Ahadeth = await rootBundle.loadString('assets/files/ahadeth.txt');
    List<String> ahadethList = Ahadeth.split('#');
    for (int i = 0; i < ahadethList.length; i++) {
      String hadeth = ahadethList[i];
      List<String> hadethLines = hadeth.trim().split('\n');
      String title = hadeth[0];
      hadethLines.removeAt(0);
      List<String> hadethContent = hadethLines;
      hadethModel model = hadethModel(title, hadethContent);
      print(title);
      ahadeth.add(model);
      setState(() {});
    }
  }
}
