import 'package:flutter/material.dart';
import 'package:idiot_community_club/Components/BarComponents.dart';

class Communitymember extends StatefulWidget {
  const Communitymember({super.key});

  @override
  State<Communitymember> createState() => _CommunitymemberState();
}

class _CommunitymemberState extends State<Communitymember> {
  var selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    Size screen = MediaQuery.of(context).size;
    return Scaffold(
        body: Column(
          children: [
            Barcomponents.idiotBar(screen),
            Image.asset("assets/images/IdiotLogo/Layers.png"),
          ],
        ),
        bottomNavigationBar: Barcomponents.getIdiotNav(screen, context));
  }
}
