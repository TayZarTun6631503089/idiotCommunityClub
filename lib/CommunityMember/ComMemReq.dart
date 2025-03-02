import 'package:flutter/material.dart';
import 'package:idiot_community_club/Components/BarComponents.dart';
import 'package:idiot_community_club/Components/ButtonComponents.dart';

class CommunityMemberRequest extends StatefulWidget {
  const CommunityMemberRequest({super.key});

  @override
  State<CommunityMemberRequest> createState() => _CommunityMemberRequestState();
}

class _CommunityMemberRequestState extends State<CommunityMemberRequest> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              gradient: ButtonComponents.myGradient,
            ),
          ),
          SafeArea(
            child: Column(
              children: [
                Row(
                  children: [
                    SizedBox(
                      width: 10,
                    ),
                    Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                    ),
                  ],
                ),
                Column(
                  children: [
                    ClipOval(
                      child: Container(
                        height: 150,
                        width: 150,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                        ),
                        child:
                            Image.asset("assets/images/Profile/RedPanda.jpeg"),
                      ),
                    ),
                    Text(
                      "Book Community",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Container(
                      height: 150,
                      width: 320,
                      padding: EdgeInsets.all(10),
                      margin: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(26, 255, 255, 255),
                        border: Border.all(
                          color: Colors.white,
                        ),
                        borderRadius: BorderRadius.all(
                          Radius.circular(12),
                        ),
                      ),
                      child: Text(
                        "Hello I am kit hello I am kit hello I am kithello I am kit hello I am kit",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      ),
                    ),
                    Container(
                      height: 350,
                      width: 320,
                      padding: EdgeInsets.all(10),
                      margin: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(180, 255, 255, 255),
                        borderRadius: BorderRadius.all(
                          Radius.circular(12),
                        ),
                      ),
                      child: Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                        child: Column(
                          children: [
                            ButtonComponents.getMyGradientText(
                                "Community Member Request Form", 18),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 15),
                              child: Column(
                                children: [
                                  ButtonComponents.getMyGradientText(
                                      "The reason why you want to join this Community",
                                      11),
                                  Container(
                                      height: 100,
                                      width: 230,
                                      margin:
                                          EdgeInsets.symmetric(vertical: 10),
                                      padding: EdgeInsets.all(8),
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(12)),
                                          gradient:
                                              ButtonComponents.myGradient),
                                      child: Form(
                                          child: TextFormField(
                                        cursorColor: Colors.white,
                                        maxLines: 3,
                                        style: TextStyle(color: Colors.white),
                                        decoration: InputDecoration.collapsed(
                                          hintStyle: TextStyle(
                                              color: const Color.fromARGB(
                                                  57, 0, 0, 0)),
                                          hintText: "hintText",
                                        ),
                                      ))),
                                ],
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 50),
                              height: 40,
                              width: 100,
                              child: ButtonComponents.getGradientBox(
                                  text: "Request", size: 15, myRadius: 12),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
