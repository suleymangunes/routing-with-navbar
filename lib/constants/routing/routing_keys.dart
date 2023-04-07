import 'package:flutter/material.dart';

class RoutingKeys {
  const RoutingKeys._();
  // keyler ile acilacak sayfanin navbar ustunde mi yoksa yeni sayfada mi acilacagina karar verilecek
  // root olarak tanimlananlar navbarin ustunden acilir
  static final GlobalKey<NavigatorState> rootNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'root');
  static final GlobalKey<NavigatorState> shellNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'shell');
}
