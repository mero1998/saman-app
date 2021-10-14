import 'package:flutter/material.dart';

  class NewSlider extends StatefulWidget {

  @override
  _NewSliderState createState() => _NewSliderState();
}

class _NewSliderState extends State<NewSlider> {
    @override
    Widget build(BuildContext context) {
      var _value =150.0;
      return GestureDetector(
        onTap: () {},
        child: Container(
          // padding: const EdgeInsets.only(
          //     left: 16, right: 16, bottom: 8, top: 8),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment:
                MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '0 EGP',
                    style: TextStyle(
                        color: Colors.grey[600],
                        fontSize: 12,
                        fontWeight: FontWeight.w400),
                  ),
                  Text(
                    '${_value.toInt()} EGP',
                    style: TextStyle(
                      color: Colors.grey[600],
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
              SliderTheme(
                data: SliderTheme.of(context).copyWith(
                  activeTrackColor: Theme
                      .of(context)
                      .primaryColor
                      .withOpacity(0.8),
                  inactiveTrackColor: Theme
                      .of(context)
                      .primaryColor
                      .withOpacity(0.2),
                  trackShape: RectangularSliderTrackShape(),
                  trackHeight: 4.0,
                  thumbColor: Colors.white,
                  thumbShape: RoundSliderThumbShape(
                      elevation: 2, enabledThumbRadius: 12.0),
                  overlayColor: Colors.green.withAlpha(32),
                  overlayShape: RoundSliderOverlayShape(
                      overlayRadius: 28.0),
                ),
                child: Slider(
                  min: 0,
                  max: 1500,
                  divisions: 150,
                  value: _value,
                  onChanged: (value) {
                    setState(() {
                      _value = value;
                      print(_value);
                    }
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      );
    }
    }

