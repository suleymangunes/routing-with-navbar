import 'package:flutter/material.dart';
import 'package:routing_with_navbar/views/navbar/navbar_screens.dart';

class CreateBottomNavBarItems {
  const CreateBottomNavBarItems._();

  static List<BottomNavigationBarItem> createBottomNavItems() {
    List<BottomNavigationBarItem> bottomNavs = [];
    for (var i = 0; i < NavbarScreens.mapim.length; i++) {
      bottomNavs.add(
        BottomNavigationBarItem(
          icon: NavbarScreens.mapim.values.elementAt(i)["icon"],
          label: NavbarScreens.mapim.values.elementAt(i)["label"],
        ),
      );
    }
    return bottomNavs;
  }
}
