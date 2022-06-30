import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../models/user_info.dart';

Future<UserInfo?> getUserInfo() async {
  try {
    final prefs = await SharedPreferences.getInstance();
    return UserInfo.userInfoFromJson(prefs.getString('userInfo')!);
  }catch(e){
    if (kDebugMode) {
      print(e);
    }
    return null;
  }
}

Future<bool> saveUserInfo(UserInfo userInfo) async {
  try {
    final prefs = await SharedPreferences.getInstance();
    return prefs.setString('userInfo', UserInfo.userInfoToJson(userInfo));
  }catch(e){
    if (kDebugMode) {
      print(e);
    }
    return false;
  }
}