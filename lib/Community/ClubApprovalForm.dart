import 'package:flutter/material.dart';
import 'package:idiot_community_club/Components/ButtonComponents.dart';

class ClubApprovalForm extends StatefulWidget {
  const ClubApprovalForm({super.key});

  @override
  State<ClubApprovalForm> createState() => _ClubApprovalFormState();
}

class _ClubApprovalFormState extends State<ClubApprovalForm> {
  @override
  Widget build(BuildContext context) {
    Size screen = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: screen.height / 6.5,
            decoration: BoxDecoration(gradient: ButtonComponents.myGradient),
            child: Container(
              child: Column(
                children: [
                  SizedBox(
                    height: screen.height / 11.5,
                  ),
                  Row(
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        child: Icon(
                          Icons.arrow_back,
                          size: 30,
                          color: Colors.white,
                        ),
                      ),
                      Container(
                        width: 280,
                        child: Center(
                          child: Text(
                            "Club Approval",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Text("data")
        ],
      ),
    );
  }
}
