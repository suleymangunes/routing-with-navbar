import 'package:flutter/material.dart';
import 'package:routing_with_navbar/routing/navigation_router.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: ThemeData(
        // TODO create theme class and customize in there
        textTheme: const TextTheme(
          bodyText2: TextStyle(
            fontSize: 50,
          ),
        ),
      ),
      routerConfig: NavigationRouter.route,
    );
  }
}
