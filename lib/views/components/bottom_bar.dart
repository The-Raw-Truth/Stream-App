import 'package:app/utils/color_lib.dart';
import 'package:app/views/pages/home_page.dart';
import 'package:app/views/pages/menu.dart';
import 'package:app/views/pages/series_screen.dart';
import 'package:app/views/pages/streams_screen.dart';
import 'package:app/views/pages/movies_page.dart';
import 'package:flutter/material.dart';

enum Menus { home, movies, series, streams, more }

final pages = [
  const HomePage(),
  //movies
  const MoviesPage(),
  //series
  const Series(),
  //streams
  const Streamscreen(),

  const Menuscreen(),
];

class BottomBar extends StatelessWidget {
  final Menus currentIndex;
  final ValueChanged<Menus> onTap;
  const BottomBar({super.key, required this.currentIndex, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: SizedBox(
        height: 80,
        child: Stack(
          children: [
            Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      onTap(Menus.home);
                      // Add code to display or update the label when the button is clicked
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          color: currentIndex == Menus.home
                              ? ColorLib.kPrimary
                              : Colors.black.withOpacity(0.3),
                          Icons.home_filled,size: 25,
                        ),
                        // Add your label here, for example:
                        Text(
                          'Home',
                          style: TextStyle(
                            fontSize: 12,
                            color: currentIndex == Menus.home
                                ? ColorLib.kPrimary
                                : Colors.black.withOpacity(0.3),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                  Expanded(
                  child: GestureDetector(
                    onTap: () {
                      onTap(Menus.movies);
                      // Add code to display or update the label when the button is clicked
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          color: currentIndex == Menus.movies
                              ? ColorLib.kPrimary
                              : Colors.black.withOpacity(0.3),
                            Icons.videocam,size: 30,
                        ),
                        // Add your label here, for example:
                        Text(
                          'Movies',
                          style: TextStyle(
                            fontSize: 12,
                            color: currentIndex == Menus.movies
                                ? ColorLib.kPrimary
                                : Colors.black.withOpacity(0.3),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                  Expanded(
                  child: GestureDetector(
                    onTap: () {
                      onTap(Menus.series);
                      // Add code to display or update the label when the button is clicked
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          color: currentIndex == Menus.series
                              ? ColorLib.kPrimary
                              : Colors.black.withOpacity(0.3),
                             Icons.video_collection,size: 26,
                        ),
                        // Add your label here, for example:
                        Text(
                          'Series',
                          style: TextStyle(
                            fontSize: 12,
                            color: currentIndex == Menus.series
                                ? ColorLib.kPrimary
                                : Colors.black.withOpacity(0.3),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                  Expanded(
                  child: GestureDetector(
                    onTap: () {
                      onTap(Menus.streams);
                      // Add code to display or update the label when the button is clicked
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          color: currentIndex == Menus.streams
                              ? ColorLib.kPrimary
                              : Colors.black.withOpacity(0.3),
                             Icons.live_tv_rounded,size: 30,
                        ),
                        // Add your label here, for example:
                        Text(
                          'Streams',
                          style: TextStyle(
                            fontSize: 12,
                            color: currentIndex == Menus.streams
                                ? ColorLib.kPrimary
                                : Colors.black.withOpacity(0.3),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
            
               
               
                 Expanded(
                  child: GestureDetector(
                    onTap: () {
                      onTap(Menus.more);
                      // Add code to display or update the label when the button is clicked
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          color: currentIndex == Menus.more
                              ? ColorLib.kPrimary
                              : Colors.black.withOpacity(0.3),
                             Icons.menu,size: 25,
                        ),
                        // Add your label here, for example:
                        Text(
                          'More',
                          style: TextStyle(
                            fontSize: 12,
                            color: currentIndex == Menus.more
                                ? ColorLib.kPrimary
                                : Colors.black.withOpacity(0.3),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
