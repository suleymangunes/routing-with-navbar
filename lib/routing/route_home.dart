import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:routing_with_navbar/constants/routing/routig_transition.dart';
import 'package:routing_with_navbar/views/navbar/navbar_screens.dart';
import 'package:routing_with_navbar/views/screen_detail.dart';

class RouterHome {
  final GoRoute routeHome = GoRoute(
    path: NavbarScreens.homePath,
    builder: (BuildContext context, GoRouterState state) {
      return NavbarScreens.homeScreen;
    },
    pageBuilder: (
      context,
      state,
    ) {
      return BuildPageWithTransition.buildPageWithDefaultTransition<void>(
        context: context,
        state: state,
        child: NavbarScreens.homeScreen,
      );
    },
    routes: <RouteBase>[
      GoRoute(
        path: 'details',
        builder: (BuildContext context, GoRouterState state) {
          return const DetailsScreen(label: 'A');
        },
        pageBuilder: (context, state) {
          return BuildPageWithTransition.buildPageWithDefaultTransition<void>(
            context: context,
            state: state,
            child: const DetailsScreen(label: 'A'),
          );
        },
      ),
    ],
  );
}
