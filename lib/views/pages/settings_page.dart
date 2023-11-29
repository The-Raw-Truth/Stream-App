import 'package:app/routes/app_routes.dart';
import 'package:app/utils/color_lib.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Settingscreen extends StatelessWidget {
  const Settingscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorLib.kPrimary,
        body: ListView(
          children: [
            const SizedBox(
              height: 70,
            ),
            ListTile(
              title: const Text(
                'App preferences',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              trailing: IconButton(
                onPressed: () {
                  GoRouter.of(context).pushNamed(AppRoutes.appPreferences);
                },
                icon: const Icon(
                  Icons.keyboard_arrow_right_rounded,
                  color: Colors.white,
                ),
              ),
            ),
            ListTile(
              title: const Text(
                'Download settings',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              trailing: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.keyboard_arrow_right_rounded,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
