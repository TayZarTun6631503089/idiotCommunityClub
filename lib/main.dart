import 'package:flutter/material.dart';
import 'package:idiot_community_club/Routes/ClubRoutes.dart';
import 'package:idiot_community_club/Routes/CommunityRoutes.dart';
import 'package:idiot_community_club/Routes/LoginRoutes.dart';

void main(List<String> args) {
  runApp(MaterialApp(
    routes: LoginRoutes.loginRoutes,
    debugShowCheckedModeBanner: false,
  ));
}
