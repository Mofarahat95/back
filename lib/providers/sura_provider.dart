import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SuraProvider extends ChangeNotifier {
  List<String> verses = [];

  loadSuraFileString(int index) async {
    String sura = await rootBundle.loadString('assets/files/${index + 1}.txt');
    List<String> suraLines = sura.split('\n');
    verses = suraLines;
    notifyListeners();
  }
}
