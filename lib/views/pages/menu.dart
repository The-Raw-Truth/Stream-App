import 'package:app/routes/app_routes.dart';
import 'package:app/utils/color_lib.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Menuscreen extends StatelessWidget {
  const Menuscreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: ColorLib.kPrimary,
      body: SafeArea(
        child: ListView(
          children: [
            //profile and search button goes here
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20,),

              child: Padding(
                padding: const EdgeInsets.only(top:20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        GoRouter.of(context).pushNamed(AppRoutes.profle);
                      },
                      child: const CircleAvatar(
                        child: Text("P"),
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        GoRouter.of(context).pushNamed(AppRoutes.search);
                      },
                      icon: const Icon(
                        Icons.search,
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Padding(
              padding: EdgeInsets.only(right: screenWidth * 0.5),
              child: TextButton(
                onPressed: () {},
                child: Text(
                  'More to watch',
                  style: TextStyle(
                      fontSize: screenWidth * 0.05, color: Colors.white),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: screenWidth * 0.15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextButton(
                      onPressed: () {},
                      child: Text(
                        'Live',
                        style: TextStyle(
                            fontSize: screenWidth * 0.05, color: Colors.white),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextButton(
                      //takes you to the download screen
                      onPressed: () {
                        GoRouter.of(context).pushNamed(AppRoutes.download);
                      },
                      child: Text(
                        'Downloads',
                        style: TextStyle(
                            fontSize: screenWidth * 0.05, color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Padding(
              padding: EdgeInsets.only(right: screenWidth * 0.5),
              child: TextButton(
                onPressed: () {},
                child: Text(
                  'My Watchlist',
                  style: TextStyle(
                      fontSize: screenWidth * 0.05, color: Colors.white),
                ),
              ),
            ),
            //the add movie to watch list
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                height: screenHeight * 0.4,
                width: double.infinity,
                child: Stack(
                  children: [
                    //the watch list frame
                    Row(
                      children: [
                        Container(
                          height: screenHeight * 0.3,
                          width: screenWidth * 0.46,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: const Color.fromARGB(255, 11, 1, 46),
                          ),
                        ),
                        const Spacer(),
                        Container(
                          height: screenHeight * 0.3,
                          width: screenWidth * 0.46,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: const Color.fromARGB(255, 11, 1, 46),
                          ),
                        ),
                      ],
                    ),
                    //the text on top of the watch tiles
                    Positioned(
                      top: 50,
                      left: 50,
                      right: 50,
                      bottom: 50,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Use the',
                                style: TextStyle(
                                    fontSize: screenWidth * 0.05,
                                    color: Colors.white),
                              ),
                              IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.add_circle_rounded,
                                  color: Colors.white,
                                  size: 40,
                                ),
                              ),
                              SizedBox(
                                width: screenWidth * 0.05,
                              ),
                              Text(
                                'button to add any',
                                style: TextStyle(
                                    fontSize: screenWidth * 0.04,
                                    color: Colors.white),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: screenWidth * 0.05,
                          ),
                          Text(
                            'TV show to your watchlist',
                            style: TextStyle(
                                fontSize: screenWidth * 0.05,
                                color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
