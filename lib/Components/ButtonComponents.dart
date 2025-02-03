import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ButtonComponents {
  static LinearGradient myGradient = LinearGradient(
      colors: [Color(0xFF52C8FF), Color(0xFF6A84EB)],
      begin: Alignment.bottomCenter,
      end: Alignment.topCenter);

  static Size getScreenSize(context) {
    Size screenSize = MediaQuery.of(context).size;
    return screenSize;
  }

  static Text getLogoText(text) {
    return Text(
      text,
      style: TextStyle(
          fontFamily: GoogleFonts.zenTokyoZoo().fontFamily, fontSize: 40),
    );
  }

  static TextButton getLogInBox(
      {required text, required route, required context}) {
    return TextButton(
      onPressed: () {
        Navigator.pushNamed(context, route);
      },
      style: TextButton.styleFrom(
        padding: EdgeInsets.zero,
      ),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        height: 50,
        width: 315,
        decoration: BoxDecoration(
            gradient: myGradient, borderRadius: BorderRadius.circular(12)),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }

  static TextButton getLogInBorder(text) {
    return TextButton(
      onPressed: () {},
      style: TextButton.styleFrom(
        padding: EdgeInsets.zero,
      ),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        height: 50,
        width: 315,
        decoration: BoxDecoration(
            border: Border.all(color: Color(0xFF6A84EB)),
            color: Colors.white,
            borderRadius: BorderRadius.circular(12)),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              foreground: Paint()
                ..shader = LinearGradient(
                  colors: [Color(0xFF52C8FF), Color(0xFF6A84EB)],
                ).createShader(Rect.fromLTWH(0, 0, 200, 40)),
            ),
          ),
        ),
      ),
    );
  }

  static ShaderMask myGradientLogo(icon, {double logoSize = 30}) {
    return ShaderMask(
        shaderCallback: (Rect bounds) {
          return ButtonComponents.myGradient.createShader(bounds);
        },
        blendMode: BlendMode.srcIn,
        child: Icon(icon, size: logoSize));
  }
}

LinearGradient myGradient() => LinearGradient(
    colors: [Color(0xFF52C8FF), Color(0xFF6A84EB)],
    begin: Alignment.bottomCenter,
    end: Alignment.topCenter);
