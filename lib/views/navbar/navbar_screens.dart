import 'package:flutter/material.dart';
import 'package:routing_with_navbar/views/screen_a.dart';
import 'package:routing_with_navbar/views/screen_b.dart';
import 'package:routing_with_navbar/views/screen_c.dart';

class NavbarScreens {
  const NavbarScreens._();

  static const Map<String, Map> mapim = {
    '/a': {
      "label": "Home",
      "icon": Icon(Icons.home),
      "screen": ScreenA(),
    },
    "/b": {
      "label": "Detail",
      "icon": Icon(Icons.details),
      "screen": ScreenB(),
    },
    "/c": {
      "label": "Profile",
      "icon": Icon(Icons.person),
      "screen": ScreenC(),
    },
  };

  static final initialLocation = NavbarScreens.mapim.keys.elementAt(0);
  static final homePath = NavbarScreens.mapim.keys.elementAt(0);
  static final homeScreen = NavbarScreens.mapim.values.elementAt(0)["screen"];
  static final detailPath = NavbarScreens.mapim.keys.elementAt(1);
  static final detailScreen = NavbarScreens.mapim.values.elementAt(1)["screen"];
  static final profilePath = NavbarScreens.mapim.keys.elementAt(2);
  static final profileScreen = NavbarScreens.mapim.values.elementAt(2)["screen"];
}
