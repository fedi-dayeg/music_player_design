import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:music_player_design/size_config.dart';

class NewController extends StatelessWidget {
  final IconData icon;
  NewController({this.icon});
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Color(0xFF2e2e2e),
        gradient: LinearGradient(
          colors: [
            Color(0xFF1c1c1c),
            Color(0xFF383838),
          ],
        ),
        boxShadow: [
          BoxShadow(
              color: Color(0xFF1c1c1c),
              offset: Offset(3.0, 3.0),
              blurRadius: 10.0),
          BoxShadow(
              color: Color(0xFF404040),
              offset: Offset(-3.0, -3.0),
              blurRadius: 10.0),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            gradient: LinearGradient(
              colors: [
                Color(0xFF303030),
                Color(0xFF1a1a1a),
              ],
            ),
          ),
          child: Padding(
            padding: EdgeInsets.all(1 * Responsive.imageSizeMultiplier),
            child: FaIcon(
              icon,
              color: Colors.white54,
              size: 6 * Responsive.imageSizeMultiplier,
            ),
          ),
        ),
      ),
    );
  }
}
