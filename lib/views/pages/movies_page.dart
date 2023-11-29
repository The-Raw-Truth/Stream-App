import 'package:app/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class MoviesPage extends StatelessWidget {
  const MoviesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            height: 500,
            width: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/Quell 2 Movie Poster 3.png"),
                  fit: BoxFit.cover),
            ),
            child: Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        GoRouter.of(context)
                            .pushReplacementNamed(AppRoutes.profle);
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
                        ))
                  ],
                ),
                SizedBox(
                  height: 200,
                ),
                Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.white,
                        ),
                        height: 50,
                        width: 300,
                        child: Center(
                          child: Text(
                            "Click to watch",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Movie for you",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                height: 300,
                child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: 300,
                    childAspectRatio: 3 / 2,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 20,
                  ),
                  itemCount: 7,
                  itemBuilder: (BuildContext ctx, index) {
                    return Column(
                      children: [
                        SizedBox(
                          height: 100,
                          child: Image.asset('assets/images/Rectangle 51.png'),
                        )
                      ],
                    );
                  },
                ),
                // child: ListView.separated(
                //   scrollDirection: Axis.horizontal,
                //   itemBuilder: (context, index) {

                //   },
                //   separatorBuilder: (context, index) {
                //     return SizedBox(
                //       width: 10,
                //     );
                //   },
                //   itemCount: 5,
                // ),
              )
            ],
          )
        ],
      ),
    );
  }
}
