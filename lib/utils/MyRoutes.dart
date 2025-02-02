import 'package:idiot_community_club/Community/CommunityClub.dart';
import 'package:idiot_community_club/Community/CommunityHome.dart';
import 'package:idiot_community_club/Community/CommunityMember.dart';
import 'package:idiot_community_club/Community/CommunityProfile.dart';
import 'package:idiot_community_club/Login/1_LoginFirstPage.dart';
import 'package:idiot_community_club/Login/2_LoginForCom.dart';

class Myroutes {
  static var myRouts = {
    '/login': (context) => LoginFirstPage(),
    '/': (context) => CommunityHome(),
    '/logInCreate': (context) => LoginForCom(),
    '/home': (context) => CommunityHome(),
    '/member': (context) => Communitymember(),
    '/club': (context) => Communityclub(),
    '/profile': (context) => Communityprofile(),
  };
}
