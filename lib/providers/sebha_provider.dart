import 'package:flutter/cupertino.dart';

class SebhaProveder extends ChangeNotifier{
  int counter = 0;
  int index = 0;
  double angle=0;
  List<String> Azkar = [
    'سبحان الله',
    'الحمد لله',
    'لالبه الا الله',
    'الله اكبر'
  ];
  void calcIndex() {
    counter += 1;
    if (counter % 30 == 0) {
      index == 3 ? index = 0 : index += 1;
      counter = 0;
    }
    angle+=360/4;
    notifyListeners();
  }
}