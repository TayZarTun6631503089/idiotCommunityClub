import 'package:flutter/material.dart';
import 'package:idiot_community_club/Components/ButtonComponents.dart';
import 'package:idiot_community_club/Components/ScreenDeco.dart';

class Loginwidget extends StatelessWidget {
  Widget child;

  Loginwidget({required this.child});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    Size screen = MediaQuery.of(context).size;
    return ScreenDeco.getWholeGradientScreen(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Center(
          child: Stack(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 80, bottom: 20),
                        child: InkWell(
                          onTap: () {
                            Navigator.pushNamed(context, "/");
                          },
                          child: Image.asset(
                              "assets/images/IdiotLogo/IdiotLogoWhite.png"),
                        ),
                      ),
                      ButtonComponents.getLogoText("IDIOT COMMUNITY CLUB",
                          fontSize: 24, color: Colors.white),
                    ],
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                      width: screen.width,
                      height: 538,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(30),
                        ),
                      ),
                      child: child),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  static Container inputBox(
      {getInput,
      myLabel,
      bool myObsecure = false,
      password = false,
      VoidCallback? togglePassword,
      required myController}) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      height: 50,
      width: 315,
      decoration: BoxDecoration(
          color: Color.fromARGB(92, 106, 132, 235),
          borderRadius: BorderRadius.all(Radius.circular(12))),
      child: TextFormField(
        controller: myController,
        obscureText: myObsecure,
        onChanged: getInput,
        decoration: InputDecoration(
          suffixIcon: password
              ? IconButton(
                  onPressed: togglePassword,
                  icon: myObsecure
                      ? Icon(Icons.visibility)
                      : Icon(Icons.visibility_off))
              : null,
          labelText: myLabel,
          labelStyle: TextStyle(
            fontSize: 12,
          ),
          contentPadding: EdgeInsets.only(left: 10),
          enabledBorder: OutlineInputBorder(borderSide: BorderSide.none),
          focusedBorder: OutlineInputBorder(borderSide: BorderSide.none),
        ),
      ),
    );
  }
}
