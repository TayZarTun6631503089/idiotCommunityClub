import 'package:flutter/material.dart';
import 'package:idiot_community_club/Models/CommunityUser.dart';
import 'package:idiot_community_club/Providers/CommunityProvider.dart';
import 'package:provider/provider.dart';

class MyCommunity extends StatefulWidget {
  const MyCommunity({super.key});

  @override
  State<MyCommunity> createState() => _MyCommunityState();
}

class _MyCommunityState extends State<MyCommunity> {
  _loadMyCom() async {
    context.read<CommunityProvider>().getCommunityUsers();
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _loadMyCom();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("HI"),
        ),
        body: _getContent());
  }

  Widget _getContent() {
    bool isLoading = context.watch<CommunityProvider>().isLoading;
    bool isError = context.watch<CommunityProvider>().isError;
    String errorMsg = context.watch<CommunityProvider>().errorMsg;
    List<CommunityUser> communityUsers =
        context.watch<CommunityProvider>().communityUser;

    if (isLoading) {
      return Text("hello");
    }
    if (isError) {
      return Text("heeeee${errorMsg}");
    }
    if (communityUsers.isEmpty) {
      return CircularProgressIndicator();
    }
    return ListView.builder(
      itemCount: communityUsers.length,
      itemBuilder: (context, index) {
        return _getMyCard(communityUsers[index]);
      },
    );
  }
}

Card _getMyCard(CommunityUser user) {
  return Card(
    child: Column(
      children: [Text("${user.name}")],
    ),
  );
}
