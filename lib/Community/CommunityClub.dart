import 'package:flutter/material.dart';
import 'package:idiot_community_club/Components/BarComponents.dart';

import 'package:idiot_community_club/Components/CardComponent.dart';

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
            SizedBox(
              height: 20,
            ),
            Expanded(
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  children: [
                    Cardcomponent.idiotClubRequestCart(
                        clubName: "Chess Club",
                        description:
                            "Sharpen your strategy and outthink your opponents!"),
                    Cardcomponent.idiotClubRequestCart(
                        clubName: "Photography Club",
                        description:
                            "Capture the world through your lens and master the art of photography."),
                    Cardcomponent.idiotClubRequestCart(
                        clubName: "Music Club",
                        description:
                            "Explore melodies, learn instruments, and jam with fellow music lovers."),
                    Cardcomponent.idiotClubRequestCart(
                        clubName: "Gaming Club",
                        description:
                            "Compete, collaborate, and connect over the latest video games."),
                    Cardcomponent.idiotClubRequestCart(
                        clubName: "Coding Club",
                        description:
                            "Build projects, solve challenges, and explore the world of programming."),
                    Cardcomponent.idiotClubRequestCart(
                        clubName: "Drama Club",
                        description:
                            "Unleash your creativity and bring stories to life on stage."),
                    Cardcomponent.idiotClubRequestCart(
                        clubName: "Robotics Club",
                        description:
                            "Design, build, and program robots to take on exciting challenges."),
                    Cardcomponent.idiotClubRequestCart(
                        clubName: "Science Club",
                        description:
                            "Conduct experiments and explore the wonders of science."),
                    Cardcomponent.idiotClubRequestCart(
                        clubName: "Art Club",
                        description:
                            "Express yourself through painting, sketching, and digital art."),
                    Cardcomponent.idiotClubRequestCart(
                        clubName: "Book Club",
                        description:
                            "Read, discuss, and share your favorite books with fellow literature lovers.")
                  ],
                ),
              ),
            ),
          ],
        ),
        bottomNavigationBar: Barcomponents.getIdiotNav(screen, context));
  }
}
