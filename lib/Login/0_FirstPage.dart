import 'package:flutter/material.dart';
import 'package:idiot_community_club/Components/ButtonComponents.dart';

class IdiotFirstPage extends StatefulWidget {
  const IdiotFirstPage({super.key});

  @override
  State<IdiotFirstPage> createState() => _IdiotFirstPageState();
}

class _IdiotFirstPageState extends State<IdiotFirstPage> {
  goToFirst() async {
    await Future.delayed(Duration(seconds: 2));
    Navigator.pushNamed(context, "/login");
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    goToFirst();
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
                ],
              ),
            ],
          ),
        ));
  }
}
