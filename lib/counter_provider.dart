import 'dart:async';
import 'package:flutter/material.dart';

class CounterProvider extends ChangeNotifier {
  int counter;
  String currentTime;

  CounterProvider({
    this.counter = 0,
    String? initialTime,
  }) : currentTime = initialTime ?? DateTime.now().toString() {
    // Start a timer to update the time every second
    Timer.periodic(Duration(seconds: 1), (timer) {
      _updateTime();
    });
  }

  void incrementCounter() {
    counter++;
    notifyListeners();
  }

  void decrementCounter() {
    counter--;
    notifyListeners();
  }

  void _updateTime() {
    currentTime = DateTime.now().toString();
    notifyListeners();
  }
}
