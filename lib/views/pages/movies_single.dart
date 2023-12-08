import 'package:app/routes/app_routes.dart';
import 'package:app/utils/color_lib.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class MoviesSingle extends StatelessWidget {
  const MoviesSingle({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorLib.kBlack,
      body: SafeArea(
          child: ListView(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            height: 350,
            width: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                  "assets/images/Rectangle 128.png",
                ),
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GestureDetector(
                  onTap: () {
                    GoRouter.of(context).pop(AppRoutes.home);
                  },
                  child: Icon(Icons.arrow_back_ios_new, color: Colors.white),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      height: 250,
                      width: 170,
                      child: Image.asset(
                        fit: BoxFit.cover,
                        "assets/images/Quell 2 Movie Poster 2.png",
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "Nobody Sleeps\nin the the\nWood Tonight",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 27,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "Movies  .  5h 43 mins",
                            style: TextStyle(
                                color:
                                    const Color.fromARGB(255, 177, 173, 173)),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 50,
            width: 200,
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: ColorLib.kPrimary, // Set the background color
                ),
                onPressed: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(Icons.play_circle_fill),
                    Text(
                      "Play",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    )
                  ],
                )),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.favorite_border, color: Colors.white),
                    ),
                    Text(
                      "Like",
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                ),
                Column(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.add, color: Colors.white),
                    ),
                    Text(
                      "List",
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                ),
                Column(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.downloading_sharp, color: Colors.white),
                    ),
                    Text(
                      "Dowload",
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                ),
                Column(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.share, color: Colors.white),
                    ),
                    Text(
                      "Share",
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                )
              ],
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Summery",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Rainbow loom animals dolphin, Five string banjos for sale, Veeno ... movie script, Wooden jewellery display cabinets, Planes soundtrack fly Rainbow loom animals dolphin, Five string banjos for sale, Veeno ... movie script, Wooden jewellery display cabinets, Planes soundtrack fly",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Rainbow loom animals dolphin, Five string banjos for sale, Veeno ... movie script, Wooden jewellery display cabinets, Planes soundtrack fly Rainbow loom animals dolphin, Five string banjos for sale, Veeno ... movie script, Wooden jewellery display cabinets, Planes soundtrack fly",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                )
              ],
            ),
          )
        ],
      )),
    );
  }
}
