import 'package:app/routes/app_routes.dart';
import 'package:app/views/pages/app_preference.dart';
import 'package:app/views/pages/card_setup.dart';
import 'package:app/views/pages/dowloads.dart';
import 'package:app/views/pages/download_page.dart';
import 'package:app/views/pages/download_quality.dart';
import 'package:app/views/pages/download_settings.dart';
import 'package:app/views/pages/home_screen.dart';
import 'package:app/views/pages/live_screen.dart';
import 'package:app/views/pages/live_settings.dart';
import 'package:app/views/pages/menu.dart';
import 'package:app/views/pages/movies_single.dart';
import 'package:app/views/pages/onboard.dart';
import 'package:app/views/pages/plan_page3.dart';
import 'package:app/views/pages/plan_page_one.dart';
import 'package:app/views/pages/plan_page_two.dart';
import 'package:app/views/pages/profile_page.dart';
import 'package:app/views/pages/search_page.dart';
import 'package:app/views/pages/settings_page.dart';
import 'package:app/views/pages/sign_in.dart';
import 'package:app/views/pages/sign_up.dart';
import 'package:app/views/pages/splash.dart';
import 'package:app/views/pages/waitlist.dart';
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
      GoRoute(
        path: '/${AppRoutes.subscreen1}',
        name: AppRoutes.subscreen1,
        pageBuilder: (context, state) => const MaterialPage(
          child: PlanPage1(),
        ),
      ),
      GoRoute(
        path: '/${AppRoutes.subscreen2}',
        name: AppRoutes.subscreen2,
        pageBuilder: (context, state) => const MaterialPage(
          child: PlanPage2(),
        ),
      ),
      GoRoute(
        path: '/${AppRoutes.subscreen3}',
        name: AppRoutes.subscreen3,
        pageBuilder: (context, state) => const MaterialPage(
          child: PlanPage3(),
        ),
      ),
      GoRoute(
        path: '/${AppRoutes.cardsetup}',
        name: AppRoutes.cardsetup,
        pageBuilder: (context, state) => const MaterialPage(
          child: CardSetup(),
        ),
      ),
      GoRoute(
        path: '/${AppRoutes.menu}',
        name: AppRoutes.menu,
        pageBuilder: (context, state) => const MaterialPage(
          child: Menuscreen(),
        ),
      ),
      GoRoute(
        path: '/${AppRoutes.download}',
        name: AppRoutes.download,
        pageBuilder: (context, state) => const MaterialPage(
          child: Downloadscreen(),
        ),
      ),
      GoRoute(
        path: '/${AppRoutes.downloadsettings}',
        name: AppRoutes.downloadsettings,
        pageBuilder: (context, state) => const MaterialPage(
          child: Downloadsettings(),
        ),
      ),
      GoRoute(
        path: '/${AppRoutes.downloadQuality}',
        name: AppRoutes.downloadQuality,
        pageBuilder: (context, state) => const MaterialPage(
          child: Downloadquality(),
        ),
      ),
      GoRoute(
        path: '/${AppRoutes.moviessingle}',
        name: AppRoutes.moviessingle,
        pageBuilder: (context, state) => const MaterialPage(
          child: MoviesSingle(),
        ),
      ),
      GoRoute(
        path: '/${AppRoutes.waitlist}',
        name: AppRoutes.waitlist,
        pageBuilder: (context, state) => const MaterialPage(
          child: WaitlistScreen(),
        ),
      ),
      GoRoute(
        path: '/${AppRoutes.downloads}',
        name: AppRoutes.downloads,
        pageBuilder: (context, state) => const MaterialPage(
          child: DowloadsPage(),
        ),
      ),
      GoRoute(
        path: '/${AppRoutes.livescreen}',
        name: AppRoutes.livescreen,
        pageBuilder: (context, state) => const MaterialPage(
          child: Livescreen(),
        ),
      ),
      GoRoute(
        path: '/${AppRoutes.livesettings}',
        name: AppRoutes.livesettings,
        pageBuilder: (context, state) => const MaterialPage(
          child: Livesettings(),
        ),
      ),
    ],
  );
}
