import 'package:flutter/foundation.dart';

class MySchedule with ChangeNotifier {
  double _stateManagementValue = 10.0;

  double getStateManagementValue() {
    return _stateManagementValue;
  }

  void setStateManagementValue(double newValue) {
    _stateManagementValue = newValue;
    // print(_stateManagementValue);
    notifyListeners();
  }
}
