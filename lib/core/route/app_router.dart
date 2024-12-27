import 'package:portfolio/core/route/routes_name.dart';
import 'package:portfolio/features/cv/ui/desktop/desktop_cv_page.dart';
import 'package:portfolio/features/home/ui/pages/desktop/desktop_home_page.dart';
import 'package:portfolio/features/home/ui/pages/mobile/mobile_home_page.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../widgets/responsive_layout.dart';

var navigatorKey = GlobalKey<NavigatorState>();

class AppRouter {
  AppRouter._();

  static final router = GoRouter(
    initialLocation: RoutesName.initialRoute,
    navigatorKey: navigatorKey,
    routes: [
      GoRoute(
        path: RoutesName.initialRoute,
        builder: (context, state) => const ResponsiveLayout(
          mobileLayout: MobileHomePage(),
          tabletLayout: MobileHomePage(),
          desktopLayout: DesktopHomePage(),
        ),
        routes: [
          GoRoute(
            path: RoutesName.cv,
            builder: (context, state) => const ResponsiveLayout(
              mobileLayout: MyPdfView(),
              tabletLayout: MyPdfView(),
              desktopLayout: MyPdfView(),
            ),
          ),
        ],
      ),
    ],
  );
}
