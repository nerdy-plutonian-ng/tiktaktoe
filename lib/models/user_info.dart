// To parse this JSON data, do
//
//     final userInfo = userInfoFromJson(jsonString);

import 'dart:convert';

class UserInfo {
  UserInfo({
    required this.username,
    required this.isUsingDarkMode,
  });

  final String username;
  final bool isUsingDarkMode;

  factory UserInfo.fromJson(Map<String, dynamic> json) => UserInfo(
    username: json["username"],
    isUsingDarkMode: json["isUsingDarkMode"],
  );

  Map<String, dynamic> toJson() => {
    "username": username,
    "isUsingDarkMode": isUsingDarkMode,
  };

  static UserInfo userInfoFromJson(String str) => UserInfo.fromJson(json.decode(str));

  static String userInfoToJson(UserInfo data) => json.encode(data.toJson());

}
