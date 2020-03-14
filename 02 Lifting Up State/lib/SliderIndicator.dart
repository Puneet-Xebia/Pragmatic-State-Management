import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'schedule.dart';

class SliderIndicator extends StatefulWidget {
  @override
  _SliderIndicatorState createState() => _SliderIndicatorState();
}

class _SliderIndicatorState extends State<SliderIndicator> {
  @override
  Widget build(BuildContext context) {
    final schedule = Provider.of<MySchedule>(context);
    return Text(
      "Slider Value : ${schedule.getStateManagementValue()}",
      style: TextStyle(fontSize: 42),
    );
  }

  /*
  /// Using Consumer Widgte, Kinda complex
  /// as compared to Provider
  @override
  Widget build(BuildContext context) {
    return Consumer<MySchedule>(
      builder: (context, schedule, _) {
        return Text(
          "Slider Value : ${schedule.getStateManagementValue()}",
          style: TextStyle(fontSize: 42),
        );
      },
    );
  }
  */
}
