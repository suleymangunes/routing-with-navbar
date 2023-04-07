import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:routing_with_navbar/constants/routing/routig_transition.dart';
import 'package:routing_with_navbar/constants/routing/routing_keys.dart';
import 'package:routing_with_navbar/views/navbar/navbar_screens.dart';
import 'package:routing_with_navbar/views/screen_detail.dart';

class RouteDetail {
  final GoRoute routeDetail = GoRoute(
    path: NavbarScreens.detailPath,
    builder: (BuildContext context, GoRouterState state) {
      return NavbarScreens.detailScreen;
    },
    pageBuilder: (
      context,
      state,
    ) {
      return BuildPageWithTransition.buildPageWithDefaultTransition<void>(
        context: context,
        state: state,
        child: NavbarScreens.detailScreen,
      );
    },
    routes: <RouteBase>[
      GoRoute(
        path: 'details',
        parentNavigatorKey: RoutingKeys.rootNavigatorKey,
        builder: (BuildContext context, GoRouterState state) {
          return const DetailsScreen(label: 'B');
        },
        pageBuilder: (context, state) {
          return BuildPageWithTransition.buildPageWithDefaultTransition<void>(
            context: context,
            state: state,
            child: const DetailsScreen(label: 'B'),
          );
        },
      ),
    ],
  );
}
