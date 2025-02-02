import 'package:flutter/material.dart';
import 'package:idiot_community_club/Components/BarComponents.dart';

class ClubMemberHome extends StatefulWidget {
  const ClubMemberHome({super.key});

  @override
  State<ClubMemberHome> createState() => _ClubMemberHomeState();
}

class _ClubMemberHomeState extends State<ClubMemberHome> {
  @override
  Widget build(BuildContext context) {
    Size screen = MediaQuery.of(context).size;
    return Scaffold(
      body: Barcomponents.idiotBar(screen),
    );
  }
}

// Gradient Function
