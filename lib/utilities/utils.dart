import 'package:flutter/material.dart';

import 'prefs_ops.dart';
import 'app_theme.dart';

Future<ThemeData> getAppTheme() async {
  final userInfo = await getUserInfo();
  return userInfo == null
      ? lightTheme()
      : userInfo.isUsingDarkMode
          ? darkTheme()
          : lightTheme();
}
