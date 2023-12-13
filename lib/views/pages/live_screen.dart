import 'package:app/routes/app_routes.dart';
import 'package:app/utils/color_lib.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Livescreen extends StatefulWidget {
  const Livescreen({super.key});

  @override
  State<Livescreen> createState() => _LivescreenState();
}

class _LivescreenState extends State<Livescreen> {
  bool isrecording = false;
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        body: Stack(children: [
          //the background image
          SizedBox(
            height: double.infinity,
            width: double.infinity,
            child: Image.asset(
              'assets/images/live_background.png',
              fit: BoxFit.fill,
            ),
          ),
          //the components on it
          SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: screenHeight * 0.1,
                ),
                //the P for profile logo
                Padding(
                  padding: EdgeInsets.only(right: screenWidth * 0.7),
                  child: GestureDetector(
                    onTap: () {
                      GoRouter.of(context).pushNamed(AppRoutes.profle);
                    },
                    child: CircleAvatar(
                      backgroundColor: Colors.amber,
                      radius: 30,
                      child: Text(
                        "P",
                        style: TextStyle(
                          fontSize: screenWidth * 0.05,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
                //a little space between p and the settings and the video camera screen
                SizedBox(
                  height: screenHeight * 0.4,
                ),
                // the settings row
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(
                          onPressed: () {
                            setState(() {
                              isrecording = !isrecording;
                            });
                          },
                          icon: isrecording
                              ? Icon(
                                  Icons.mic_off_rounded,
                                  size: screenWidth * 0.1,
                                  color: Colors.white,
                                )
                              : Icon(
                                  Icons.mic,
                                  size: screenWidth * 0.1,
                                  color: Colors.white,
                                ),
                        ),
                        SizedBox(
                          height: screenHeight * 0.02,
                        ),
                        //text
                        Padding(
                          padding: EdgeInsets.only(left: screenWidth * 0.02),
                          child: Text(
                            'Mic',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: screenWidth * 0.05,
                            ),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      width: screenWidth * 0.05,
                    ),
                    //the settings button leading to the screen
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(
                          onPressed: () {
                            GoRouter.of(context)
                                .pushNamed(AppRoutes.livesettings);
                          },
                          icon: Icon(
                            Icons.settings,
                            color: Colors.white,
                            size: screenWidth * 0.1,
                          ),
                        ),
                        SizedBox(
                          height: screenHeight * 0.02,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: screenWidth * 0.04),
                          child: Text(
                            'Settings',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: screenWidth * 0.05,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: screenHeight * 0.06,
                ),
                //the text for the live
                Text(
                  'Congrats! you now have\n'
                  'ongoing LIVE access',
                  style: TextStyle(
                      fontSize: screenWidth * 0.05,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: screenHeight * 0.05,
                ),
                SizedBox(
                  width: screenWidth * 0.5,
                  height: screenHeight * 0.07,
                  child: MaterialButton(
                    onPressed: () {},
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    color: ColorLib.kPrimary,
                    child: Center(
                      child: Text(
                        'Go LIVE',
                        style: TextStyle(
                            fontSize: screenWidth * 0.06,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
