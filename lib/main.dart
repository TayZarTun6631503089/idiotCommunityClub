import 'package:flutter/material.dart';
import 'package:idiot_community_club/Providers/CommunityProvider.dart';
import 'package:idiot_community_club/Routes/ClubRoutes.dart';
import 'package:idiot_community_club/Routes/CommunityRoutes.dart';
import 'package:idiot_community_club/Routes/LoginRoutes.dart';
import 'package:idiot_community_club/utils/MyCommunity.dart';
import 'package:provider/provider.dart';

void main(List<String> args) {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (_) => CommunityProvider()),
    ],
    child: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: LoginRoutes.loginRoutes,
      debugShowCheckedModeBanner: false,
    );
  }
}
