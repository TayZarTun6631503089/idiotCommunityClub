import 'package:flutter/material.dart';
import 'package:idiot_community_club/Components/BarComponents.dart';

class Communityclub extends StatefulWidget {
  const Communityclub({super.key});

  @override
  State<Communityclub> createState() => _CommunityclubState();
}

class _CommunityclubState extends State<Communityclub> {
  var selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    Size screen = MediaQuery.of(context).size;
    return Scaffold(
        body: Column(
          children: [
            Barcomponents.idiotBar(screen),
            Text("Club"),
            Flexible(child: Container())
          ],
        ),
        bottomNavigationBar: Barcomponents.getIdiotNav(screen, context));
  }
}
