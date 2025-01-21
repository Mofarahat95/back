import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami_2/models/sura_model.dart';

class SuraDetails extends StatefulWidget {
  static const String routeName = 'sura_details';

  SuraDetails({super.key});

  @override
  State<SuraDetails> createState() => _SuraDetailsState();
}

class _SuraDetailsState extends State<SuraDetails> {
  List<String> verses = [];

  @override
  Widget build(BuildContext context) {
    var model = ModalRoute.of(context)?.settings.arguments as suraModel;
    if (verses.isEmpty) {
      loadSuraFileString(model.index);
    }
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage('assets/images/bg.png'))),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          centerTitle: true,
          title: Text(
            'Islami',
            style: GoogleFonts.elMessiri(
              fontSize: 30,
              fontWeight: FontWeight.w700,
              color: Color(0xff242424),
            ),
          ),
        ),
        body: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
          ),
          child: Card(
            margin: EdgeInsets.all(40),
            color: Color(0xffF8F8F8),
            child: ListView.builder(
              padding: EdgeInsets.symmetric(vertical: 16,horizontal: 10),
              itemCount: verses.length,
              itemBuilder: (context, index) => Text(
                textDirection: TextDirection.rtl,
                verses[index],style:  GoogleFonts.elMessiri(
                fontSize: 20,
                fontWeight: FontWeight.w500,
                color: Color(0xff242424),
                wordSpacing: 4,
              ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  loadSuraFileString(int index) async {
    String sura = await rootBundle.loadString('assets/files/${index + 1}.txt');
    List<String> suraLines = sura.split('\n');
    verses = suraLines;
    setState(() {});
  }
}
