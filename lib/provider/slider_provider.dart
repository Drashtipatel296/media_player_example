import 'package:flutter/material.dart';

class SliderProvider extends ChangeNotifier{
  int current = 0;

  void changeImage(int index){
    current = index;
    notifyListeners();
  }
}