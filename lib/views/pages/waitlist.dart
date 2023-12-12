import 'package:app/data/dummy_data_live.dart';
import 'package:app/data/dummy_data_movies.dart';
import 'package:app/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class WaitlistScreen extends StatelessWidget {
  const WaitlistScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: ListView(
          children: [
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                     GoRouter.of(context).pop(AppRoutes.menu);
                  },
                  child: Icon(
                    Icons.arrow_back_ios_new_rounded,
                    color: Colors.white,
                  ),
                ),
                Text(
                  "Waitlist",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                  ),
                ),
                SizedBox()
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              height: 750,
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 5.0, // Add spacing between grid items
                  mainAxisSpacing: 5.0,
                ),
                itemCount: searchmovies.length,
                itemBuilder: (BuildContext ctx, index) {
                  final searchfilm = searchmovies[index];
                  return Column(
                    children: [
                      SizedBox(
                        height: 150,
                        width: 200,
                        child: searchfilm,
                      )
                    ],
                  );
                },
              ),
            ),
            SizedBox(
              height: 40,
            )
          ],
        ),
      )),
    );
  }
}
