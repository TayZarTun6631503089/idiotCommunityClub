import 'package:flutter/material.dart';
import 'package:idiot_community_club/Components/BarComponents.dart';
import 'package:idiot_community_club/Components/ButtonComponents.dart';
import 'package:idiot_community_club/Components/CardComponent.dart';

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
            SizedBox(
              height: 20,
            ),
            Expanded(
              child: SingleChildScrollView(
                  child: Column(
                children: [
                  ClipOval(
                    child: Stack(
                      children: [
                        Container(
                            height: 150,
                            width: 150,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                            ),
                            child: Image.asset(
                                "assets/images/Profile/RedPanda.jpeg")),
                        Positioned(
                            child: ButtonComponents.myGradientLogo(
                          Icons.edit,
                        )),
                      ],
                    ),
                  ),
                  Column(
                    children: [
                      Cardcomponent.idiotClubCard(
                          clubName: "Kit", description: "Hi"),
                      Cardcomponent.idiotClubCard(
                          clubName: "Kit", description: "Hi"),
                      Cardcomponent.idiotClubCard(
                          clubName: "Kit", description: "Hi"),
                      Cardcomponent.idiotClubCard(
                          clubName: "Kit", description: "Hi"),
                    ],
                  ),
                ],
              )),
            )
          ],
        ),
        bottomNavigationBar: Barcomponents.getIdiotNav(screen, context));
  }
}
