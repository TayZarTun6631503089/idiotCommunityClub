import 'package:flutter/material.dart';
import 'package:idiot_community_club/Components/ButtonComponents.dart';

class Barcomponents {
  static AppBar idiotAppBar = AppBar(
    leading: Image.asset("assets/images/IdiotLogo/LogoWithIdiot.png"),
    flexibleSpace: Container(
      decoration: BoxDecoration(
        gradient: ButtonComponents.myGradient,
      ),
    ),
  );
}
