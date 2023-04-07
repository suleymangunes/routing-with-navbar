import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:routing_with_navbar/constants/routing/routing_keys.dart';
import 'package:routing_with_navbar/views/navbar/navbar_screens.dart';
import '../constants/routing/routig_transition.dart';
import '../views/screen_detail.dart';

class RouteProfile {
  final GoRoute routeProfile = GoRoute(
    path: NavbarScreens.profilePath,
    builder: (BuildContext context, GoRouterState state) {
      return NavbarScreens.profileScreen;
    },
    pageBuilder: (
      context,
      state,
    ) {
      return BuildPageWithTransition.buildPageWithDefaultTransition<void>(
        context: context,
        state: state,
        child: NavbarScreens.profileScreen,
      );
    },
    routes: <RouteBase>[
      GoRoute(
        path: 'details',
        parentNavigatorKey: RoutingKeys.rootNavigatorKey,
        builder: (BuildContext context, GoRouterState state) {
          return const DetailsScreen(label: 'C');
        },
        pageBuilder: (context, state) {
          return BuildPageWithTransition.buildPageWithDefaultTransition<void>(
            context: context,
            state: state,
            child: const DetailsScreen(label: 'C'),
          );
        },
      ),
    ],
  );
}
