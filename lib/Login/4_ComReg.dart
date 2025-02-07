import 'package:flutter/material.dart';
import 'package:idiot_community_club/Components/ButtonComponents.dart';
import 'package:idiot_community_club/Components/LoginWidget.dart';
import 'package:idiot_community_club/Models/CommunityReg.dart';
import 'package:idiot_community_club/Providers/CommunityProvider.dart';
import 'package:provider/provider.dart';

class ComReg extends StatefulWidget {
  const ComReg({super.key});

  @override
  State<ComReg> createState() => _ComRegState();
}

class _ComRegState extends State<ComReg> {
  GlobalKey<FormState> myFormKey = GlobalKey<FormState>();
  bool showPassword = false;
  var userNameController = TextEditingController();
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  var rePasswordController = TextEditingController();
  OverlayEntry? overlayEntry;

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    userNameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    rePasswordController.dispose();
  }

  void showOverlay(BuildContext context, String username, String email) {
    overlayEntry = OverlayEntry(
      builder: (context) => Stack(
        children: [
          Positioned.fill(
            child: Container(
              color: Colors.black54, // Semi-transparent background
            ),
          ),
          Center(
            child: Material(
              color: Colors.transparent,
              child: Container(
                padding: EdgeInsets.all(20),
                width: 300,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "Welcome, $username!",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Email: $email",
                      style: TextStyle(fontSize: 16),
                    ),
                    SizedBox(height: 20),
                    Row(
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            overlayEntry?.remove();
                            Navigator.pushNamed(context, "/comLogin");
                          },
                          child: Text("OK"),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );

    Overlay.of(context).insert(overlayEntry!);
  }

  @override
  Widget build(BuildContext context) {
    final communityProvider = Provider.of<CommunityProvider>(context);
    return Loginwidget(
      child: SingleChildScrollView(
        child: Form(
          key: myFormKey,
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 40),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 5,
                ),
                ButtonComponents.getMyGradientText("Sign Up", 25),
                ButtonComponents.getMyGradientText(
                    "Sign up now to join amazing clubs!", 12),
                SizedBox(
                  height: 5,
                ),
                ...getMyInputFinal(
                    "Username", "Enter Your Username", (value) {},
                    myController: userNameController),
                ...getMyInputFinal("Email", "Enter Your Email", (value) {},
                    myController: emailController),
                ...getMyInputPasswordFinal(
                  myController: passwordController,
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
                  myController: rePasswordController,
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
                  onTap: () async {
                    bool success = await communityProvider
                        .registerNewCommunityUsers(CommunityReg(
                            name: userNameController.text,
                            email: emailController.text,
                            password: passwordController.text));
                    if (success) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text("Signup successful! ")),
                      );
                      showOverlay(context, userNameController.text,
                          emailController.text);
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                            content: Text("Signup failed. Please try again.")),
                      );
                    }
                  },
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
                        onTap: () {},
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

List getMyInputFinal(title, label, method, {required myController}) {
  return [
    ButtonComponents.getMyGradientText(title, 18),
    Loginwidget.inputBox(
        getInput: method, myLabel: label, myController: myController)
  ];
}

List getMyInputPasswordFinal(title, label, method, showPassword, tooglePassword,
    {required myController}) {
  return [
    ButtonComponents.getMyGradientText(title, 18),
    Loginwidget.inputBox(
        getInput: method,
        myLabel: label,
        myObsecure: !showPassword,
        password: true,
        togglePassword: tooglePassword,
        myController: myController)
  ];
}
