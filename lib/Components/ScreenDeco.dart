import 'package:flutter/material.dart';
import 'package:idiot_community_club/Components/ButtonComponents.dart';

class ScreenDeco {
  static Container getWholeGradientScreen({Widget? child}) {
    return Container(
      decoration: BoxDecoration(
        gradient: ButtonComponents.myGradientLTR,
      ),
      child: child,
    );
  }
}
