import 'package:flutter/material.dart';
import 'package:idiot_community_club/Components/ButtonComponents.dart';

class LoginFirstPage extends StatefulWidget {
  const LoginFirstPage({super.key});

  @override
  State<LoginFirstPage> createState() => _LoginFirstPageState();
}

class _LoginFirstPageState extends State<LoginFirstPage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

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
                        InkWell(
                          onTap: () {
                            Navigator.pushNamed(context, "/loginForCom");
                          },
                          child: ButtonComponents.getGradientBox(
                              text: "Community Create",
                              size: 16.0,
                              myRadius: 12),
                        ),
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
