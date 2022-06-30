import 'package:flutter/material.dart';

///routes
import '../routes/home.dart';

MaterialPageRoute generateRoute(RouteSettings routeSettings){
  //final arguments = routeSettings.arguments;
  switch(routeSettings.name){
    case HomePage.routeName:
      return MaterialPageRoute(builder: (_) => const HomePage());
    default:
      return MaterialPageRoute(builder: (_) => const HomePage());
  }
}