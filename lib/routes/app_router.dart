import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../screen/details_screen.dart';
import '../screen/home_page.dart';

part 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {

  @override
  List<AutoRoute> get routes => [
    AutoRoute(page: HomeRoute.page, initial: true),
    AutoRoute(page: DetailsRoute.page)
  ];
}
