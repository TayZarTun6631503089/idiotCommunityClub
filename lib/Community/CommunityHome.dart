import 'package:flutter/material.dart';
import 'package:idiot_community_club/Components/BarComponents.dart';

class CommunityHome extends StatefulWidget {
  const CommunityHome({super.key});

  @override
  State<CommunityHome> createState() => _CommunityHomeState();
}

class _CommunityHomeState extends State<CommunityHome> {
  var selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    Size screen = MediaQuery.of(context).size;
    return Scaffold(
        body: Column(
          children: [
            Barcomponents.idiotBar(screen),
            Text("Home"),
            Flexible(child: Container())
          ],
        ),
        bottomNavigationBar: Barcomponents.getIdiotNav(screen, context));
  }
}
