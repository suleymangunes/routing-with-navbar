import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:routing_with_navbar/views/navbar/navbar_items.dart';
import 'package:routing_with_navbar/views/navbar/navbar_screens.dart';

class ScaffoldWithNavBar extends StatelessWidget {
  const ScaffoldWithNavBar({
    required this.child,
    super.key,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: child,
      bottomNavigationBar: _bottomNavigationBar(context),
    );
  }

  BottomNavigationBar _bottomNavigationBar(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      items: CreateBottomNavBarItems.createBottomNavItems(),
      currentIndex: _calculateSelectedIndex(context),
      onTap: (int index) => _onItemTapped(index, context),
    );
  }

  static int _calculateSelectedIndex(BuildContext context) {
    final String location = GoRouterState.of(context).location;
    if (NavbarScreens.mapim.keys.contains(location)) {
      return NavbarScreens.mapim.keys.toList().indexOf(location);
    } else {
      return _baseRoute(location);
    }
  }

  static int _baseRoute(String location) {
    int baseRoute = 0;
    for (var i = 0; i < NavbarScreens.mapim.keys.length; i++) {
      if (location.startsWith(NavbarScreens.mapim.keys.toList()[i])) {
        baseRoute = i;
      }
    }
    return baseRoute;
  }

  void _onItemTapped(int index, BuildContext context) {
    GoRouter.of(context).go(NavbarScreens.mapim.keys.elementAt(index));
  }
}
