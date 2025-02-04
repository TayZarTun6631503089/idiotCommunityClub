import 'package:idiot_community_club/ClubMember/ClubMemberHome.dart';
import 'package:idiot_community_club/ClubMember/JoinedClub.dart';
import 'package:idiot_community_club/ClubMember/MyClubForm.dart';
import 'package:idiot_community_club/ClubMember/MyClub.dart';

class Clubroutes {
  static var clubRoutes = {
    "/": (context) => ClubMemberHome(),
    "/myClub": (context) => MyClub(),
    "/myClubForm": (context) => MyClubForm(),
    "/joinedClub": (context) => JoinedClub(),
  };
}
