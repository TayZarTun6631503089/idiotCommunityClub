import 'package:flutter/material.dart';
import 'package:idiot_community_club/Components/ButtonComponents.dart';

class LoginFirstPage extends StatefulWidget {
  const LoginFirstPage({super.key});

  @override
  State<LoginFirstPage> createState() => _LoginFirstPageState();
}

class _LoginFirstPageState extends State<LoginFirstPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset("assets/images/IdiotLogo/group_3.png"),
                  ButtonComponents.getLogoText("IDIOT"),
                  ButtonComponents.getLogoText("COMMUNITY"),
                  ButtonComponents.getLogoText("CLUB"),
                  Container(
                    padding: EdgeInsets.only(top: 100),
                    child: Column(
                      children: [
                        ButtonComponents.getLogInBox(
                            text: "Community Create",
                            route: "/logInCreate",
                            context: context),
                        SizedBox(
                          height: 10,
                        ),
                        ButtonComponents.getLogInBorder("Community Member"),
                      ],
                    ),
                  )
                ],
              ),
            ],
          ),
        ));
  }
}
