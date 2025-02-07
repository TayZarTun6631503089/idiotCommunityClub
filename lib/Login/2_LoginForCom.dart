import 'package:flutter/material.dart';
import 'package:idiot_community_club/Components/ButtonComponents.dart';
import 'package:idiot_community_club/utils/ExampleConstants.dart';

class LoginForCom extends StatefulWidget {
  const LoginForCom({super.key});

  @override
  State<LoginForCom> createState() => _LoginForComState();
}

class _LoginForComState extends State<LoginForCom> {
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
                  InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, "/");
                      },
                      child:
                          Image.asset("assets/images/IdiotLogo/group_3.png")),
                  ButtonComponents.getLogoText("IDIOT"),
                  ButtonComponents.getLogoText("COMMUNITY"),
                  ButtonComponents.getLogoText("CLUB"),
                  Container(
                    padding: EdgeInsets.only(top: 100),
                    child: Column(
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.pushNamed(context, "/comLogin");
                          },
                          child: ButtonComponents.getGradientBox(
                              text: "Log In", size: 16.0, myRadius: 12),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        InkWell(
                            onDoubleTap: () {
                              Navigator.pushNamed(context, "/comReg");
                            },
                            child: ButtonComponents.getLogInBorder("Sign Up")),
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
