import 'package:flutter/material.dart';
import 'package:music_player_design/size_config.dart';

class NewButton extends StatelessWidget {
  final IconData icon;
  NewButton({this.icon});
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Color(0xFF2e2e2e),
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          colors: [Color(0xFF1c1c1c), Color(0xFF383838)],
        ),
        boxShadow: [
          BoxShadow(
            color: Color(0xF1c1c1c),
            offset: Offset(5.0, 5.0),
            blurRadius: (10.0),
          ),
          BoxShadow(
              color: Color(0xF404040),
              offset: Offset(-5.0, -5.0),
              blurRadius: (10.0))
        ],
      ),
      child: Container(
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              colors: [Color(0xFF303030), Color(0xFF1a1a1a)],
            )),
        child: Padding(
          padding: EdgeInsets.all(13.0),
          child: Icon(
            icon,
            size: 5.4 * Responsive.imageSizeMultiplier,
            color: Colors.white38,
          ),
        ),
      ),
    );
  }
}
