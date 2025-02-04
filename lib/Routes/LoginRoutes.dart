import 'package:idiot_community_club/Login/1_LoginFirstPage.dart';
import 'package:idiot_community_club/Login/2_LoginForCom.dart';
import 'package:idiot_community_club/Login/3_ComLogin.dart';
import 'package:idiot_community_club/Login/4_ComReg.dart';

class LoginRoutes {
  static var loginRoutes = {
    "/first": (context) => LoginFirstPage(),
    "/comLogin": (context) => ComLogin(),
    "/loginForCom": (context) => LoginForCom(),
    "/": (context) => ComReg(),
  };
}
