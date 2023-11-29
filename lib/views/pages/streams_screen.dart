import 'package:app/data/dummy_data_live.dart';
import 'package:app/routes/app_routes.dart';
import 'package:app/views/components/custom_live_container.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Streamscreen extends StatefulWidget {
  const Streamscreen({super.key});

  @override
  State<Streamscreen> createState() => _StreamscreenState();
}

class _StreamscreenState extends State<Streamscreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Stack(
          children: [
            Positioned.fill(
              child: Image.asset(
                'assets/images/basketball_player.png',
                fit: BoxFit.fill,
              ),
            ),
            Column(
              children: [
                const SizedBox(
                  height: 50,
                ),
                SizedBox(
                  height: 30,
                  width: 300,
                  child: Row(
                    children: [
                      const SizedBox(
                        height: 80,
                        width: 80,
                        child: CircleAvatar(
                          backgroundColor: Colors.amber,
                          child: Center(
                            child: Text(
                              'P',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20),
                            ),
                          ),
                        ),
                      ),
                      const Text(
                        'Profile',
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                      const Spacer(),
                      IconButton(
                        onPressed: () {
                          GoRouter.of(context).pushNamed(AppRoutes.search);
                        },
                        icon: const Icon(
                          Icons.search,
                          color: Colors.white,
                          size: 40,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 300,
                ),
                //date
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
                              fontSize: 15),
                        ),
                      ),
                    ),
                  ),
                ),
                //containers with red bg
                Container(
                  height: 300,
                  width: double.infinity,
                  color: const Color.fromARGB(93, 255, 17, 0),
                  child: Column(
                    children: [
                      const Text(
                        'Highligts of the match between\n'
                        'South Africa and Jamaica which\n'
                        'took place at the Christchurch arena',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Stack(
                        children: [
                          Column(
                            children: [
                              const SizedBox(
                                height: 20,
                              ),
                              Container(
                                color: Colors.red,
                                height: 213,
                                width: double.infinity,
                                child: Column(
                                  children: [
                                    const SizedBox(
                                      height: 40,
                                    ),
                                    //who is live row
                                    Row(
                                      children: [
                                        const Padding(
                                          padding: EdgeInsets.all(8.0),
                                          child: Text(
                                            'Who is LIVE',
                                            style: TextStyle(
                                                fontSize: 20,
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold),
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
                                                  167, 255, 255, 255),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    //live display
                                    SizedBox(
                                      height: 120,
                                      width: double.infinity,
                                      child: ListView.separated(
                                          scrollDirection: Axis.horizontal,
                                          itemBuilder: (context, index) {
                                            final basketballers =
                                                livematch[index];
                                            return SizedBox(
                                              height: 110,
                                              width: 200,
                                              child: Stack(
                                                children: [
                                                  basketballers,
                                                  const Positioned(
                                                    left: 5,
                                                    top: 10,
                                                    child: Livecontainer(),
                                                  ),
                                                ],
                                              ),
                                            );
                                          },
                                          separatorBuilder: (context, index) =>
                                              const SizedBox(
                                                width: 10,
                                              ),
                                          itemCount: livematch.length),
                                    )
                                  ],
                                ),
                              ),
                            ],
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
                                        fontWeight: FontWeight.bold),
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
