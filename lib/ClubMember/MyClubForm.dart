import 'package:flutter/material.dart';
import 'package:idiot_community_club/Components/BarComponents.dart';
import 'package:idiot_community_club/Components/ButtonComponents.dart';
import 'package:idiot_community_club/Components/CardComponent.dart';

class MyClubForm extends StatefulWidget {
  const MyClubForm({super.key});

  @override
  State<MyClubForm> createState() => _MyClubFormState();
}

class _MyClubFormState extends State<MyClubForm> {
  @override
  Widget build(BuildContext context) {
    Size screen = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        children: [
          Barcomponents.idiotClubBar(screen),
          SizedBox(
            height: 40,
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Cardcomponent.getMyOwnGradientBox(
                height: 530,
                width: 320,
                child: Form(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Center(
                        child: Stack(
                          children: [
                            ClipOval(
                              child: Container(
                                  height: 105,
                                  width: 105,
                                  decoration:
                                      BoxDecoration(color: Colors.white),
                                  child: Image.asset(
                                      "assets/images/IdiotLogo/Frame 99.png")),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        "Club Name",
                        style: TextStyle(color: Colors.white),
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.all(
                              Radius.circular(12),
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.all(
                              Radius.circular(12),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        "The reason you want to create the club",
                        style: TextStyle(color: Colors.white),
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.all(
                              Radius.circular(12),
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.all(
                              Radius.circular(12),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        "Club Description",
                        style: TextStyle(color: Colors.white),
                      ),
                      TextFormField(
                        maxLines: 3,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.all(
                              Radius.circular(12),
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.all(
                              Radius.circular(12),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Center(
                        child: InkWell(
                          onDoubleTap: () {
                            Navigator.pushNamed(context, "/home");
                          },
                          child: Container(
                              height: 40,
                              width: 100,
                              child:
                                  ButtonComponents.getLogInBorder("Request")),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
      bottomNavigationBar: Barcomponents.getIdiotClubNav(screen, context),
    );
  }
}
