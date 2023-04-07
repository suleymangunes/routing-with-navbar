import 'package:go_router/go_router.dart';
import 'package:routing_with_navbar/routing/route_detail.dart';
import 'package:routing_with_navbar/routing/route_home.dart';
import 'package:routing_with_navbar/routing/route_profile.dart';

class NavigationRouterList {
  final List<RouteBase> routeList = <RouteBase>[
    RouterHome().routeHome,
    RouteDetail().routeDetail,
    RouteProfile().routeProfile
  ];
}
