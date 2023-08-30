import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class SignUpProvider extends ChangeNotifier {
  bool isLoading = false;
  void loading() {
    isLoading = true;
    print(isLoading);

    notifyListeners();
  }

  void signed() {
    isLoading = false;
    print(isLoading);

    notifyListeners();
  }
}

class SignInProvider extends ChangeNotifier {
  bool isLoading = false;
  void loading() {
    isLoading = true;
    print(isLoading);

    notifyListeners();
  }

  void signed() {
    isLoading = false;
    print(isLoading);

    notifyListeners();
  }
}
