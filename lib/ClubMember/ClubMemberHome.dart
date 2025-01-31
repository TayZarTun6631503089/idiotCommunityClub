import 'package:flutter/material.dart';
import 'package:idiot_community_club/Components/BarComponents.dart';

class ClubMemberHome extends StatefulWidget {
  const ClubMemberHome({super.key});

  @override
  State<ClubMemberHome> createState() => _ClubMemberHomeState();
}

class _ClubMemberHomeState extends State<ClubMemberHome> {
  int _selectedIndex = 0; // Track the selected index

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Barcomponents.idiotAppBar,
    );
  }
}

// Gradient Function
