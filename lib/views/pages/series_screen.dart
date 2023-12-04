import 'package:app/data/dummy_data_movies.dart';
import 'package:app/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Series extends StatefulWidget {
  const Series({super.key});

  @override
  State<Series> createState() => _SeriesState();
}

class _SeriesState extends State<Series> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Stack(
          children: [
            Positioned.fill(
              child: Image.asset(
                'assets/images/lutherpng.png',
                fit: BoxFit.cover,
              ),
            ),
            Container(
              child: Column(
                children: [
                  const SizedBox(
                    height: 50,
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: () {
                            GoRouter.of(context)
                                .pushReplacementNamed(AppRoutes.profle);
                          },
                          child: CircleAvatar(
                            child: Text("P"),
                          ),
                        ),
                        Icon(
                          Icons.search,
                          color: Colors.white,
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 210,
                  ),
                  SizedBox(
                    height: 200,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: 300,
                          height: 50,
                          child: MaterialButton(
                            onPressed: () {},
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                            color: Colors.yellow,
                            child: const Center(
                              child: Text(
                                'Watch trailer',
                                style: TextStyle(
                                    fontSize: 19,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        SizedBox(
                          width: 300,
                          height: 50,
                          child: MaterialButton(
                            onPressed: () {},
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                            color: Colors.white,
                            child: const Center(
                              child: Text(
                                'Subscribe to watch',
                                style: TextStyle(
                                    fontSize: 19,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 70,
                  ),
                  //series for you
                  Container(
                    width: double.infinity,
                    height: 400,
                    color: const Color.fromARGB(155, 255, 17, 0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            'Series for you',
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Container(
                          color: const Color.fromARGB(255, 255, 17, 0),
                          height: 200,
                          width: double.infinity,
                          child: ListView.separated(
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index) {
                              final movieindex = moviespng[index];
                              return SizedBox(
                                height: MediaQuery.of(context).size.height * 0.1,
                                width: 200,
                                child: movieindex,
                              );
                            },
                            separatorBuilder: (context, index) =>
                                const SizedBox(
                              width: 2,
                            ),
                            itemCount: moviespng.length,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
