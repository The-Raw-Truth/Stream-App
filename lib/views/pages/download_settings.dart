import 'package:app/routes/app_routes.dart';
import 'package:app/utils/color_lib.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Downloadsettings extends StatefulWidget {
  const Downloadsettings({super.key});

  @override
  State<Downloadsettings> createState() => _DownloadsettingsState();
}

class _DownloadsettingsState extends State<Downloadsettings> {
  bool isdownload = false;
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Download settings',
          style: TextStyle(fontSize: screenWidth * 0.05, color: Colors.white),
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.keyboard_arrow_left_sharp,
            color: Colors.white,
            size: screenWidth * 0.05,
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      backgroundColor: ColorLib.kPrimary,
      body: ListView(
        children: [
          const SizedBox(
            height: 30,
          ),
          ListTile(
            title: Text(
              'Download over Cellular',
              style: TextStyle(
                  fontSize: screenWidth * 0.05,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            subtitle: Text(
              'Data charges may apply',
              style: TextStyle(
                fontSize: screenWidth * 0.04,
                fontWeight: FontWeight.bold,
                color: const Color.fromARGB(81, 255, 255, 255),
              ),
            ),
            trailing: Switch(
              value: isdownload,
              onChanged: (value) {
                setState(() {
                  isdownload = !isdownload;
                });
              },
              activeColor: Colors.white,
              activeTrackColor: Colors.amber,
            ),
          ),
          SizedBox(
            width: screenWidth * 0.7,
            child: Image.asset('assets/images/white_line.png'),
          ),
          const SizedBox(
            height: 10,
          ),
          ListTile(
            title: Text(
              'Download Quality',
              style: TextStyle(
                  fontSize: screenWidth * 0.05,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            trailing: IconButton(
              onPressed: () {
                GoRouter.of(context).pushNamed(AppRoutes.downloadQuality);
              },
              icon: Icon(
                Icons.keyboard_arrow_right_rounded,
                color: Colors.white,
                size: screenWidth * 0.05,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
