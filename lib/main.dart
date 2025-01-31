import 'package:flutter/material.dart';
import 'package:idiot_community_club/ClubMember/ClubMemberHome.dart';
import 'package:idiot_community_club/Login/1_LoginFirstPage.dart';
import 'package:idiot_community_club/Login/2_LoginForCom.dart';

void main(List<String> args) {
  runApp(MaterialApp(
    routes: {
      '/home': (context) => LoginFirstPage(),
      '/logInCreate': (context) => LoginForCom(),
      '/': (context) => ClubMemberHome(),
    },
    debugShowCheckedModeBanner: false,
  ));
}
