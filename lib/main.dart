import 'package:portfolio/core/providers/main_provider.dart';
import 'package:portfolio/core/route/app_router.dart';
import 'package:portfolio/core/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:reactive_theme/reactive_theme.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:url_strategy/url_strategy.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final themeMode = await ReactiveMode.getSavedThemeMode();
  setPathUrlStrategy();

  runApp(
    ChangeNotifierProvider(
      create: (context) => MainProvider(),
      child: MyApp(
        savedThemeMode: themeMode,
      ),
    ),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({super.key, required this.savedThemeMode});

  final ThemeMode? savedThemeMode;

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return ReactiveThemer(
      savedThemeMode: widget.savedThemeMode,
      builder: (ThemeMode reactiveMode) {
        return ResponsiveSizer(
          builder: (BuildContext, Orientation, ScreenType) {
            return MaterialApp.router(
              routerConfig: AppRouter.router,
              title: 'Ahmed Hosni',
              debugShowCheckedModeBanner: false,
              theme: AppTheme.lightTheme,
              themeMode: reactiveMode,
              darkTheme: AppTheme.darkTheme,
            );
          },
        );
      },
    );
  }
}
