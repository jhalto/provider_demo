import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';

class SliderProvider with ChangeNotifier{
  double value = 0;

  void setValue(double val){
    value = val;
   notifyListeners();
  }

}