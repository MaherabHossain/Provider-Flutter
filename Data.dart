import 'package:flutter/foundation.dart';

class Data extends ChangeNotifier {
  var count = 0;

  increment() {
    count += 2;
    notifyListeners();
  }
}
