import 'package:app/routes/app_routes.dart';
import 'package:app/views/pages/app_preference.dart';
import 'package:app/views/pages/home_screen.dart';
import 'package:app/views/pages/onboard.dart';
import 'package:app/views/pages/profile_page.dart';
import 'package:app/views/pages/search_page.dart';
import 'package:app/views/pages/settings_page.dart';
import 'package:app/views/pages/sign_in.dart';
import 'package:app/views/pages/sign_up.dart';
import 'package:app/views/pages/splash.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AppPages {
  static final router = GoRouter(
    routes: [
      GoRoute(
        name: AppRoutes.splash,
        path: "/",
        pageBuilder: (context, state) => const MaterialPage(
          child: SplashScreen(),
        ),
      ),
      GoRoute(
        path: '/${AppRoutes.onboard}',
        name: AppRoutes.onboard,
        pageBuilder: (context, state) => const MaterialPage(
          child: OnBoardingScreen(),
        ),
      ),
      GoRoute(
        path: '/${AppRoutes.signin}',
        name: AppRoutes.signin,
        pageBuilder: (context, state) => const MaterialPage(
          child: SignIn(),
        ),
      ),
      GoRoute(
        path: '/${AppRoutes.signup}',
        name: AppRoutes.signup,
        pageBuilder: (context, state) => const MaterialPage(
          child: SignUp(),
        ),
      ),
      GoRoute(
        path: '/${AppRoutes.home}',
        name: AppRoutes.home,
        pageBuilder: (context, state) => const MaterialPage(
          child: HomeScreen(),
        ),
      ),
      GoRoute(
        path: '/${AppRoutes.profle}',
        name: AppRoutes.profle,
        pageBuilder: (context, state) => const MaterialPage(
          child: ProfilePage(),
        ),
      ),
      GoRoute(
        path: '/${AppRoutes.search}',
        name: AppRoutes.search,
        pageBuilder: (context, state) => const MaterialPage(
          child: Searchpage(),
        ),
      ),
      GoRoute(
        path: '/${AppRoutes.settings}',
        name: AppRoutes.settings,
        pageBuilder: (context, state) => const MaterialPage(
          child: Settingscreen(),
        ),
      ),
      GoRoute(
        path: '/${AppRoutes.appPreferences}',
        name: AppRoutes.appPreferences,
        pageBuilder: (context, state) => const MaterialPage(
          child: AppPreference(),
        ),
      ),
    ],
  );
}
