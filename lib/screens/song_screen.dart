import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_xlider/flutter_xlider.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:music_player_design/size_config.dart';
import 'package:music_player_design/widgets/new_button.dart';
import 'package:music_player_design/widgets/new_controller.dart';

class SongScreen extends StatefulWidget {
  @override
  _SongScreenState createState() => _SongScreenState();
}

class _SongScreenState extends State<SongScreen> {
  double _lowerValue = 100.0;
  double _upperValue;

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Material(
      type: MaterialType.transparency,
      child: Container(
        height: height,
        width: width,
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(
                  vertical: 5 * Responsive.heightMultiplier,
                  horizontal: 6 * Responsive.widthMultiplier),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  NewButton(
                    icon: Icons.arrow_back,
                  ),
                  Text(
                    "PLAYING NOW",
                    style: TextStyle(
                      color: Colors.white38,
                      letterSpacing: 0.25,
                      fontSize: 19.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  NewButton(
                    icon: Icons.menu,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 0.5 * Responsive.heightMultiplier,
            ),
            Container(
              height: 80 * Responsive.imageSizeMultiplier,
              width: 80 * Responsive.imageSizeMultiplier,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color(0xFF212121),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0xFF1c1c1c),
                      offset: Offset(10.0, 10.0),
                      blurRadius: 22.0,
                    ),
                    BoxShadow(
                      color: Color(0xFF404040),
                      offset: Offset(-10.0, -10.0),
                      blurRadius: 30.0,
                    ),
                  ]),
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage("assets/images/em.jpg"),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 4 * Responsive.heightMultiplier,
            ),
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "Crack a Bottle",
                    style: TextStyle(
                      fontSize: 3.8 * Responsive.textMultiplier,
                      color: Colors.white70,
                      letterSpacing: 0.5,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  WidgetSpan(
                    child: Container(
                      margin: EdgeInsets.only(
                        bottom: 1.3 * Responsive.heightMultiplier,
                      ),
                      child: Icon(
                        Icons.explicit,
                        color: Colors.white54,
                        size: 4.6 * Responsive.imageSizeMultiplier,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 1.5 * Responsive.heightMultiplier,
            ),
            Text(
              "Eminem, Dr Dre & 50 Cent",
              style: TextStyle(
                  fontSize: 1.6 * Responsive.textMultiplier,
                  color: Colors.white54,
                  letterSpacing: 0.5,
                  fontWeight: FontWeight.w300),
            ),
            SizedBox(
              height: 2 * Responsive.heightMultiplier,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: 3 * Responsive.widthMultiplier),
              child: Row(
                children: [
                  Text(
                    (_lowerValue / 60).toStringAsFixed(0) +
                        ":" +
                        (_lowerValue % 60).toStringAsFixed(0),
                    style: TextStyle(color: Colors.white60),
                  ),
                  Spacer(),
                  Text(
                    "4:57",
                    style: TextStyle(color: Colors.white60),
                  ),
                ],
              ),
            ),
            FlutterSlider(
              values: [_lowerValue, _upperValue],
              max: 297,
              min: 0,
              tooltip: FlutterSliderTooltip(
                textStyle: TextStyle(
                  fontSize: 13,
                  color: Colors.transparent,
                ),
                boxStyle: FlutterSliderTooltipBox(
                  decoration: BoxDecoration(color: Colors.transparent),
                ),
              ),
              trackBar: FlutterSliderTrackBar(
                inactiveTrackBar: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  color: Colors.black12,
                  border: Border.all(width: 10, color: Colors.black87),
                  boxShadow: [
                    BoxShadow(
                        color: Color(0xF171717),
                        offset: Offset(-3.0, -3.0),
                        blurRadius: 3.0),
                    BoxShadow(
                        color: Color(0xF171717),
                        offset: Offset(-3.0, -3.0),
                        blurRadius: 3.0),
                  ],
                ),
                activeTrackBar: BoxDecoration(
                  borderRadius: BorderRadius.circular(4.0),
                  boxShadow: [
                    BoxShadow(
                        color: Color(0xF171717),
                        offset: Offset(-3.0, -3.0),
                        blurRadius: 3.0),
                    BoxShadow(
                        color: Color(0xF171717),
                        offset: Offset(-3.0, -3.0),
                        blurRadius: 3.0),
                  ],
                  gradient: LinearGradient(
                    colors: [Colors.red, Colors.amber],
                  ),
                ),
              ),
              handler: FlutterSliderHandler(
                child: Container(
                  padding: EdgeInsets.all(11),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0xFF212121),
                    boxShadow: [
                      BoxShadow(
                          color: Color(0xFF1c1c1c),
                          offset: Offset(3.0, 3.0),
                          blurRadius: 5.0),
                      BoxShadow(
                          color: Color(0xFF404040),
                          offset: Offset(-3.0, -3.0),
                          blurRadius: 5.0),
                    ],
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.amber,
                      boxShadow: [
                        BoxShadow(
                            color: Color(0xFF1c1c1c),
                            offset: Offset(5.0, 5.0),
                            blurRadius: 10.0),
                        BoxShadow(
                            color: Color(0xFF404040),
                            offset: Offset(-5.0, -5.0),
                            blurRadius: 10.0),
                      ],
                    ),
                  ),
                ),
              ),
              onDragging: (handlerIndex, lowerValue, upperValue) {
                setState(() {
                  _lowerValue = lowerValue;
                  _upperValue = upperValue;
                });
              },
            ),
            SizedBox(
              height: 2 * Responsive.heightMultiplier,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: 12 * Responsive.widthMultiplier),
              child: Row(
                children: [
                  NewController(
                    icon: FontAwesomeIcons.backward,
                  ),
                  Spacer(),
                  NewController(
                    icon: FontAwesomeIcons.play,
                  ),
                  Spacer(),
                  NewController(
                    icon: FontAwesomeIcons.forward,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
