import 'package:flutter/material.dart';

class DefaultProvider with ChangeNotifier {
  bool studyScreenIsLoading = true;

  void toggleStudyScreenLoading() {
    studyScreenIsLoading = false;
    notifyListeners();
  }
}
