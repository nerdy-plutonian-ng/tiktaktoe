import 'package:flutter/material.dart';

import 'utilities/route_generator.dart';
import 'utilities/utils.dart';

late ThemeData appTheme;

void main() async {
  appTheme = await getAppTheme();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TikTakToe',
      theme: appTheme,
      onGenerateRoute: (routeSettings) => generateRoute(routeSettings),
    );
  }
}

