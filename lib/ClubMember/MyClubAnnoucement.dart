import 'package:flutter/material.dart';
import 'package:idiot_community_club/Components/BarComponents.dart';
import 'package:idiot_community_club/Components/ButtonComponents.dart';
import 'package:idiot_community_club/utils/ExampleConstants.dart';

class MyClubAnnouncemnt extends StatefulWidget {
  const MyClubAnnouncemnt({super.key});

  @override
  State<MyClubAnnouncemnt> createState() => _MyClubAnnouncemntState();
}

double myHeight = 180;

class _MyClubAnnouncemntState extends State<MyClubAnnouncemnt> {
  @override
  Widget build(BuildContext context) {
    Size screen = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        children: [
          Barcomponents.idiotClubBar(screen),
          // Column(
          //   children: [
          //     Align(
          //       alignment: Alignment.topRight,
          //       child: Container(
          //         margin: EdgeInsets.all(20),
          //         padding: EdgeInsets.all(10),
          //         width: 250,
          //         height: 180,
          //         decoration: BoxDecoration(
          //             borderRadius: BorderRadius.only(
          //               topLeft: Radius.circular(24),
          //               bottomLeft: Radius.circular(24),
          //               topRight: Radius.circular(24),
          //             ),
          //             gradient: ButtonComponents.myGradient),
          //         child: Text("data"),
          //       ),
          //     ),
          //   ],
          // )

          Expanded(
            child: ListView.builder(
              padding: EdgeInsets.all(10),
              reverse: true,
              itemCount: Exampleconstants.reqMembers.length,
              itemBuilder: (context, index) {
                return Align(
                  alignment: Alignment.topRight,
                  child: Container(
                    margin: EdgeInsets.only(top: 10, right: 20, bottom: 5),
                    padding: EdgeInsets.only(top: 10, right: 10, left: 10),
                    width: 250,
                    height: myHeight,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(24),
                          bottomLeft: Radius.circular(24),
                          topRight: Radius.circular(24),
                        ),
                        gradient: ButtonComponents.myGradient),
                    child: Column(
                      children: [
                        Container(
                          height: myHeight - 30,
                          width: 220,
                          child: Text(
                            Exampleconstants.reqMembers[index].name,
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              "11:11",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 12),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                );
              },
            ),
          )
        ],
      ),
      bottomNavigationBar: Stack(
        children: [
          Container(
            height: screen.height / 9,
            width: screen.width,
            decoration: BoxDecoration(
              gradient: ButtonComponents.myGradient,
            ),
          ),
          Container(
            padding: const EdgeInsets.only(top: 15),
            margin: EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                Container(
                  height: 40,
                  width: 320,
                  child: Form(
                    child: TextFormField(
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.only(left: 15),
                        filled: true,
                        fillColor: const Color.fromARGB(125, 255, 255, 255),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.all(
                            Radius.circular(30),
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.all(
                            Radius.circular(30),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Icon(
                  Icons.send,
                  color: Colors.white,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
