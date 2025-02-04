import 'package:flutter/material.dart';
import 'package:idiot_community_club/Components/ButtonComponents.dart';
import 'package:idiot_community_club/Components/LoginWidget.dart';
import 'package:idiot_community_club/Components/ScreenDeco.dart';

class ComLogin extends StatefulWidget {
  const ComLogin({super.key});

  @override
  State<ComLogin> createState() => _ComLoginState();
}

class _ComLoginState extends State<ComLogin> {
  bool showPassword = false;
  @override
  Widget build(BuildContext context) {
    return Loginwidget(
      child: Form(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 40,
              ),
              ButtonComponents.getMyGradientText("Log In", 25),
              ButtonComponents.getMyGradientText(
                  "Log in now to join amazing clubs", 12),
              SizedBox(
                height: 20,
              ),
              ButtonComponents.getMyGradientText("Email", 18),
              Loginwidget.inputBox(
                  getInput: (value) {
                    print(value);
                  },
                  myLabel: "Enter Your Email"),
              ButtonComponents.getMyGradientText("Password", 18),
              Loginwidget.inputBox(
                getInput: (value) {
                  print(value);
                },
                myLabel: "Enter Your Password",
                myObsecure: !showPassword,
                password: true,
                togglePassword: () {
                  setState(() {
                    showPassword = !showPassword;
                  });
                },
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  ButtonComponents.getMyGradientText("Forget Password?", 12),
                  SizedBox(
                    width: 15,
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              InkWell(
                child: ButtonComponents.getGradientBox(
                    text: "Login", size: 20, myRadius: 12),
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't have account?",
                    style: TextStyle(fontSize: 12),
                  ),
                  InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, "/comReg");
                      },
                      child: ButtonComponents.getMyGradientText(
                          "Register Now", 12))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
