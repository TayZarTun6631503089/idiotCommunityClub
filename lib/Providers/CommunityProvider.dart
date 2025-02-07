import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:idiot_community_club/Models/CommunityReg.dart';
import 'package:idiot_community_club/Models/CommunityUser.dart';
import 'package:idiot_community_club/utils/Api.dart';
import 'package:idiot_community_club/utils/Status.dart';

class CommunityProvider extends ChangeNotifier {
  List<CommunityUser> _communityUsers = [];
  bool _isError = false;
  bool _isLoading = false;
  String _errorMsg = "";

  dynamic get communityUser => _communityUsers;

  bool get isError => _isError;
  bool get isLoading => _isLoading;
  String get errorMsg => _errorMsg;

  _setCommunityUser(List<CommunityUser> communityUsers) {
    _communityUsers = communityUsers;
  }

  _setLoading(bool isLoading) {
    _isLoading = isLoading;
  }

  _setError(bool isError, String errorMsg) {
    _isError = isError;
    _errorMsg = errorMsg;
  }

  getCommunityUsers() async {
    _setLoading(true);
    Object resObj = await Api.get(url: "/users");
    if (resObj is Success) {
      List listy = resObj.response as List;
      List<CommunityUser> communityUsers =
          listy.map((e) => CommunityUser.fromJson(e)).toList();
      _setCommunityUser(communityUsers);
    } else if (resObj is Failure) {
      _setError(true, resObj.response.toString());
    }
    notifyListeners();
    _setLoading(false);
  }

  Future<bool> registerNewCommunityUsers(CommunityReg comData) async {
    _setLoading(true);
    var response =
        await Api.registerCommunity(data: comData, uri: "/api/member/signup");
    if (response != null && response.statusCode == 200) {
      final Map<String, dynamic> responseData = jsonDecode(response.body);
      if (responseData["success"]) {
        CommunityUser newCommunityUser =
            CommunityUser.fromJson(responseData["data"]);

        _communityUsers.add(newCommunityUser);

        notifyListeners();
        _setLoading(false);
        return true;
      } else {
        _setError(true, responseData["message"]);
      }
    } else {
      _setError(true, "Failed to Reg");
    }
    _setLoading(false);
    return true;
  }
}
