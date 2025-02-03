import 'package:flutter/material.dart';
import 'package:idiot_community_club/Components/BarComponents.dart';
import 'package:idiot_community_club/Components/ButtonComponents.dart';
import 'package:idiot_community_club/utils/ExampleConstants.dart';

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
            Expanded(
              child: ListView.builder(
                  itemCount: Exampleconstants.reqMembers.length,
                  itemBuilder: (context, index) => _getMyMembers(
                      Exampleconstants.reqMembers[index], context)),
            )
          ],
        ),
        bottomNavigationBar: Barcomponents.getIdiotNav(screen, context));
  }
}

Card _getMyMembers(Member member, context) {
  return Card(
    child: Container(
      height: 100,
      child: Padding(
        padding: const EdgeInsets.only(left: 20),
        child: Row(
          children: [
            ClipOval(
              child: Container(
                height: 70,
                width: 70,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                ),
                child: Image.asset(
                  member.image,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    member.name,
                    style: TextStyle(fontSize: 18),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      Container(
                        height: 35,
                        width: 85,
                        child: ButtonComponents.getLogInBox(
                            text: "Accept",
                            route: "/",
                            context: context,
                            size: 10.0,
                            myRadius: 8),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        height: 35,
                        width: 85,
                        decoration: BoxDecoration(
                            color: Color(0xFFC18EFF),
                            borderRadius: BorderRadius.all(Radius.circular(8))),
                        child: TextButton(
                          onPressed: () {},
                          style: TextButton.styleFrom(
                            backgroundColor: Color(0xFFC18EFF),
                          ),
                          child: Text(
                            "Cancel",
                            style: TextStyle(fontSize: 10, color: Colors.white),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 60.0),
              child: Image.asset("assets/images/IdiotLogo/Layers.png"),
            )
          ],
        ),
      ),
    ),
  );
}
