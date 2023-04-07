import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:routing_with_navbar/constants/routing/routing_keys.dart';
import 'package:routing_with_navbar/routing/routers_list.dart';
import 'package:routing_with_navbar/views/navbar/navbar_screens.dart';
import 'package:routing_with_navbar/views/navbar/navbar_with_scafoold.dart';

class NavigationRouter {
  const NavigationRouter._();
  static GoRouter route = GoRouter(
    navigatorKey: RoutingKeys.rootNavigatorKey,
    initialLocation: NavbarScreens.initialLocation,
    routes: <RouteBase>[
      ShellRoute(
        navigatorKey: RoutingKeys.shellNavigatorKey,
        builder: (BuildContext context, GoRouterState state, Widget child) {
          return ScaffoldWithNavBar(child: child);
        },
        routes: NavigationRouterList().routeList,
      ),
    ],
  );
}
