import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami_2/models/sura_model.dart';
import 'package:islami_2/providers/sura_provider.dart';
import 'package:provider/provider.dart';

class SuraDetails extends StatelessWidget {
  static const String routeName = 'sura_details';

  SuraDetails({super.key});

  @override
  Widget build(BuildContext context) {
    var model = ModalRoute.of(context)?.settings.arguments as suraModel;

    return ChangeNotifierProvider(
        create: (context) => SuraProvider(),
        builder: (context, child) {
          var pro = Provider.of<SuraProvider>(context);
          pro.loadSuraFileString(model.index);
          return Container(
            decoration: BoxDecoration(
                image:
                    DecorationImage(image: AssetImage('assets/images/bg.png'))),
            child: Scaffold(
              appBar: AppBar(
                backgroundColor: Colors.transparent,
                centerTitle: true,
                title: Text(
                  'Islami',
                  style: Theme.of(context).textTheme.bodyMedium,
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
                    padding: EdgeInsets.symmetric(vertical: 16, horizontal: 10),
                    itemCount: pro.verses.length,
                    itemBuilder: (context, index) => Text(
                      textDirection: TextDirection.rtl,
                      pro.verses[index],
                      style: GoogleFonts.elMessiri(
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
        });
  }
}
