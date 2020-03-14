import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_management/schedule.dart';

class MySlider extends StatefulWidget {
  @override
  _MySliderState createState() => _MySliderState();
}

class _MySliderState extends State<MySlider> {
  var _value = 0.0;

  // void _onValueChange(double val) {
  //   setState(() {
  //     _value = val;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    final schedule = Provider.of<MySchedule>(context);
    return Slider(
      min: 0,
      max: 100,
      divisions: 10,
      onChanged: (val) => schedule.setStateManagementValue(val),
      value: schedule.getStateManagementValue(),
      label: _value.toInt().toString(),
    );
  }
}
