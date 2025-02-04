import 'package:flutter/material.dart';
import 'package:idiot_community_club/Components/ButtonComponents.dart';
import 'package:idiot_community_club/Components/LoginWidget.dart';

class ComReg extends StatefulWidget {
  const ComReg({super.key});

  @override
  State<ComReg> createState() => _ComRegState();
}

class _ComRegState extends State<ComReg> {
  bool showPassword = false;
  @override
  Widget build(BuildContext context) {
    return Loginwidget(
      child: SingleChildScrollView(
        child: Form(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 40),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 10,
                ),
                ButtonComponents.getMyGradientText("Sign Up", 25),
                ButtonComponents.getMyGradientText(
                    "Sign up now to join amazing clubs!", 12),
                SizedBox(
                  height: 10,
                ),
                ...getMyInputFinal(
                    "Username", "Enter Your Username", (value) {}),
                ...getMyInputFinal("Email", "Enter Your Email", (value) {}),
                ...getMyInputPasswordFinal(
                  "Password",
                  "Enter Your Password",
                  (value) {},
                  showPassword,
                  () {
                    setState(() {
                      showPassword = !showPassword;
                    });
                  },
                ),
                ...getMyInputPasswordFinal(
                  "Re-Enter Password",
                  "Enter Your Password",
                  (value) {},
                  showPassword,
                  () {
                    setState(() {
                      showPassword = !showPassword;
                    });
                  },
                ),
                SizedBox(
                  height: 5,
                ),
                InkWell(
                  child: ButtonComponents.getGradientBox(
                      text: "Sign Up", size: 20, myRadius: 12),
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "If you already have an account? ",
                      style: TextStyle(fontSize: 12),
                    ),
                    InkWell(
                        onTap: () {
                          print("Hi");
                        },
                        child: ButtonComponents.getMyGradientText("Log in", 12))
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

List getMyInputFinal(title, label, method) {
  return [
    ButtonComponents.getMyGradientText(title, 18),
    Loginwidget.inputBox(getInput: method, myLabel: label)
  ];
}

List getMyInputPasswordFinal(
    title, label, method, showPassword, tooglePassword) {
  return [
    ButtonComponents.getMyGradientText(title, 18),
    Loginwidget.inputBox(
      getInput: method,
      myLabel: label,
      myObsecure: !showPassword,
      password: true,
      togglePassword: tooglePassword,
    )
  ];
}
