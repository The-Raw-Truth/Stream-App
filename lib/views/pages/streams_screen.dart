import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:app/routes/app_routes.dart';
import 'package:app/views/components/custom_live_container.dart';
import 'package:app/data/dummy_data_live.dart';

class Streamscreen extends StatefulWidget {
  const Streamscreen({Key? key}) : super(key: key);

  @override
  _StreamscreenState createState() => _StreamscreenState();
}

class _StreamscreenState extends State<Streamscreen> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return SafeArea(
      child: SingleChildScrollView(
        child: Stack(
          children: [
            Positioned.fill(
              child: Image.asset(
                'assets/images/basketball_player.png',
                fit: BoxFit.cover,
              ),
            ),
            Column(
              children: [
                const SizedBox(height: 50),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
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
                const SizedBox(height: 300),
                Padding(
                  padding: const EdgeInsets.only(right: 180),
                  child: SizedBox(
                    height: 40,
                    width: 150,
                    child: Container(
                      margin: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        color: Colors.grey[850],
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const Center(
                        child: Text(
                          'Sat, 11 Nov',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  height: screenHeight,
                  width: double.infinity,
                  color: const Color.fromARGB(93, 255, 17, 0),
                  child: Column(
                    children: [
                      const Text(
                        'Highlights of the match between\n'
                        'South Africa and Jamaica which\n'
                        'took place at the Christchurch arena',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 10),
                      Stack(
                        children: [
                          SingleChildScrollView(
                            child: Column(
                              children: [
                                const SizedBox(height: 20),
                                Container(
                                  color: Colors.red,
                                  height: screenHeight - 191,
                                  width: double.infinity,
                                  child: Column(
                                    children: [
                                      const SizedBox(height: 40),
                                      Row(
                                        children: [
                                          const Padding(
                                            padding: EdgeInsets.all(8.0),
                                            child: Text(
                                              'Who is LIVE',
                                              style: TextStyle(
                                                fontSize: 20,
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ),
                                          const Spacer(),
                                          TextButton(
                                            onPressed: () {},
                                            child: const Text(
                                              'See all',
                                              style: TextStyle(
                                                fontSize: 15,
                                                fontWeight: FontWeight.bold,
                                                color: Color.fromARGB(
                                                  167,
                                                  255,
                                                  255,
                                                  255,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: screenHeight *
                                            0.2, // Adjust the height based on your needs
                                        width: double.infinity,
                                        child: ListView.separated(
                                          separatorBuilder: (context, index) =>
                                              const SizedBox(width: 10),
                                          scrollDirection: Axis.horizontal,
                                          itemBuilder: (context, index) {
                                            final basketballer =
                                                livematch[index];
                                            return SizedBox(
                                              width: screenWidth *
                                                  0.6, // Adjust the width based on your needs
                                              child: Stack(
                                                children: [
                                                  basketballer,
                                                  const Positioned(
                                                    left: 5,
                                                    top: 10,
                                                    child: Livecontainer(),
                                                  ),
                                                ],
                                              ),
                                            );
                                          },
                                          itemCount: livematch.length,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Positioned(
                            left: 50,
                            right: 50,
                            top: 0,
                            child: SizedBox(
                              height: 50,
                              width: 200,
                              child: MaterialButton(
                                onPressed: () {},
                                color: Colors.white,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: const Center(
                                  child: Text(
                                    'Watch now',
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
