part of 'router_imports.dart';

@AdaptiveAutoRouter(
  routes: <AutoRoute>[
    //auth routes
    AdaptiveRoute(page: Splash, initial: true),
    AutoRoute(page: Home,children: [baseRoute]),

  ],
)
class $AppRouter {}
