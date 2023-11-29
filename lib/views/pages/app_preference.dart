import 'package:app/utils/color_lib.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AppPreference extends StatefulWidget {
  const AppPreference({super.key});

  @override
  State<AppPreference> createState() => _AppPreferenceState();
}

class _AppPreferenceState extends State<AppPreference> {
  bool isContinuous = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            'App preferences',
            style: TextStyle(fontSize: 24, color: Colors.white),
          ),
          elevation: 0,
          backgroundColor: Colors.transparent,
          centerTitle: true,
          leading: IconButton(
            onPressed: () {
              GoRouter.of(context).pop();
            },
            icon: const Icon(
              Icons.keyboard_arrow_left_rounded,
              color: Colors.white,
              size: 24,
            ),
          ),
        ),
        backgroundColor: ColorLib.kPrimary,
        body: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(
                height: 20,
              ),
              const Text(
                'PLAYBACK',
                style: TextStyle(
                  color: Color.fromARGB(148, 255, 255, 255),
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
              ListTile(
                title: const Text(
                  'Continuous play',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                trailing: Switch(
                  value: isContinuous,
                  onChanged: (value) {
                    setState(() {
                      isContinuous = value;
                    });
                  },
                  activeColor: Colors.white,
                  activeTrackColor: Colors.amber,
                ),
              ),
              ListTile(
                title: const Text(
                  'Auto-Play trailers on Wifi',
                  style: TextStyle(color: Colors.white),
                ),
                trailing: Switch(
                  value: isContinuous,
                  onChanged: (value) {},
                  activeColor: Colors.white,
                  activeTrackColor: Colors.amber,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'STREAMING OVER CELLULAR',
                style: TextStyle(
                  color: Color.fromARGB(148, 255, 255, 255),
                  fontSize: 15,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              ListTile(
                title: const Text(
                  'Use mobile-Data for streaming',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                trailing: Switch(
                  value: isContinuous,
                  onChanged: (value) {},
                  activeColor: Colors.white,
                  activeTrackColor: Colors.amber,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
