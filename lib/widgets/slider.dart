import 'package:flutter/material.dart';

class SliderOld extends StatefulWidget {
  const SliderOld({Key? key}) : super(key: key);

  @override
  _SliderOldState createState() => _SliderOldState();
}

class _SliderOldState extends State<SliderOld> {
  RangeValues _currentRangeValues = const RangeValues(40, 80);

  @override
  Widget build(BuildContext context) {
    return SliderTheme(
      data: SliderTheme.of(context).copyWith(
        activeTrackColor: Color(0XFF070908),
        inactiveTickMarkColor: Colors.white,
        thumbShape: RoundSliderThumbShape(
            enabledThumbRadius: 13.0),
        thumbColor: Colors.white,
        overlayShape:
        RoundSliderOverlayShape(overlayRadius: 20),
        overlayColor: Color(0X29EB1555),
      ),
      child: RangeSlider(
          values: _currentRangeValues,
          min: 0,
          max: 50000,
          divisions: 10,
          labels: RangeLabels(
            _currentRangeValues.start
                .round()
                .toString(),
            _currentRangeValues.end.round().toString(),
          ),
          onChanged: (RangeValues values) {
            setState(() {
              _currentRangeValues = values;
            });
          }),
    );
  }
}
