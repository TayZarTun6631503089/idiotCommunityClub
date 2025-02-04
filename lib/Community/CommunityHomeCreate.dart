import 'package:flutter/material.dart';
import 'package:idiot_community_club/Components/BarComponents.dart';
import 'package:idiot_community_club/Components/ButtonComponents.dart';
import 'package:idiot_community_club/Components/CardComponent.dart';

class Communityhomecreate extends StatefulWidget {
  const Communityhomecreate({super.key});

  @override
  State<Communityhomecreate> createState() => _CommunityhomecreateState();
}

class _CommunityhomecreateState extends State<Communityhomecreate> {
  @override
  Widget build(BuildContext context) {
    Size screen = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        children: [
          Barcomponents.idiotBar(screen),
          SizedBox(
            height: 80,
          ),
          Cardcomponent.getMyOwnGradientBox(
              height: 480.0,
              width: 320.0,
              child: Column(
                children: [
                  Text(
                    "Create a Community",
                    style: Cardcomponent.clubTitleStyle,
                  ),
                  Form(
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
                          "Community Name",
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
                          "Description",
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
                                    ButtonComponents.getLogInBorder("Create")),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ))
        ],
      ),
      bottomNavigationBar: Barcomponents.getIdiotNav(screen, context),
    );
  }
}
