import 'package:flutter/material.dart';
import 'package:idiot_community_club/Routes/ClubRoutes.dart';
import 'package:idiot_community_club/Routes/CommunityRoutes.dart';

void main(List<String> args) {
  runApp(MaterialApp(
    routes: Clubroutes.clubRoutes,
    debugShowCheckedModeBanner: false,
  ));
}
