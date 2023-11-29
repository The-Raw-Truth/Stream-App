import 'package:app/utils/color_lib.dart';
import 'package:app/views/pages/home_page.dart';
<<<<<<< HEAD
import 'package:app/views/pages/series_screen.dart';
import 'package:app/views/pages/streams_screen.dart';
=======
import 'package:app/views/pages/movies_page.dart';
>>>>>>> cbccb46925fd230252aabe52a977252dadb69e08
import 'package:flutter/material.dart';

enum Menus { home, movies, streams, more }

final pages = [
<<<<<<< HEAD
  const HomePage(),
  //series
  const Series(),
  //streams
  const Streamscreen(),
  const Center(
=======
  HomePage(),
  MoviesPage(),
  Center(
    child: Text("garage"),
  ),
  Center(
>>>>>>> cbccb46925fd230252aabe52a977252dadb69e08
    child: Text("profile"),
  )
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
                  child: IconButton(
                    onPressed: () => onTap(Menus.home),
                    icon: Icon(
                      color: currentIndex == Menus.home
                          ? ColorLib.kPrimary
                          : Colors.black.withOpacity(0.3),
                      Icons.home_filled,
                    ),
                  ),
                ),
                Expanded(
                  child: IconButton(
                    onPressed: () => onTap(Menus.movies),
                    icon: Icon(
                      color: currentIndex == Menus.movies
                          ? ColorLib.kPrimary
                          : Colors.black.withOpacity(0.3),
                      Icons.video_call_rounded,
                    ),
                  ),
                ),
                Expanded(
                  child: IconButton(
                    onPressed: () => onTap(Menus.streams),
                    icon: Icon(
                      color: currentIndex == Menus.streams
                          ? ColorLib.kPrimary
                          : Colors.black.withOpacity(0.3),
                      Icons.live_tv_rounded,
                    ),
                  ),
                ),
                Expanded(
                  child: IconButton(
                    onPressed: () => onTap(Menus.more),
                    icon: Icon(
                      color: currentIndex == Menus.more
                          ? ColorLib.kPrimary
                          : Colors.black.withOpacity(0.3),
                      Icons.menu_sharp,
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
