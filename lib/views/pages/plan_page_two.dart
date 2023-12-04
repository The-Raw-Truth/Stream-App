import 'package:app/routes/app_routes.dart';
import 'package:app/utils/color_lib.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class PlanPage2 extends StatelessWidget {
  const PlanPage2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(228, 227, 227, 1),
      body: Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: SafeArea(
          child: ListView(
            children: [
              SizedBox(
                height: 120,
                width: 120,
                child: Image.asset(
                  "assets/images/logo.png",
                ),
              ),
              Table(
                textDirection: TextDirection.ltr,
                defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                border: TableBorder.all(width: 1.5, color: Colors.red),
                children: [
                  TableRow(children: [
                    Text(
                      
                      "Tiers",
                      textScaleFactor: 1.5,
                      style: TextStyle(
                        color: ColorLib.kPrimary,
                        fontSize: 20
                      ),
                    
                    ),
                    Text("Basic", textScaleFactor: 1.5),
                    Text("Gold", textScaleFactor: 1.5),
                    Text("Platinum", textScaleFactor: 1.5),
                  ]),
                  TableRow(children: [
                    Text("B.Tech", textScaleFactor: 1.5),
                    Text("ABESEC", textScaleFactor: 1.5),
                    Text("AKTU", textScaleFactor: 1.5),
                     Text("Platinum", textScaleFactor: 1.5),
                  ]),
                  TableRow(children: [
                    Text("12th", textScaleFactor: 1.5),
                    Text("Delhi Public School", textScaleFactor: 1.5),
                    Text("CBSE", textScaleFactor: 1.5),
                     Text("Platinum", textScaleFactor: 1.5),
                  ]),
                  TableRow(children: [
                    Text("High School", textScaleFactor: 1.5),
                    Text("SFS", textScaleFactor: 1.5),
                    Text("ICSE", textScaleFactor: 1.5),
                     Text("Platinum", textScaleFactor: 1.5),
                  ]),
                ],
              ),
              SizedBox(
                height: 70,
              ),
              GestureDetector(
                onTap: () {
                  GoRouter.of(context).pushReplacementNamed(AppRoutes.home);
                },
                child: Container(
                  margin: const EdgeInsets.only(bottom: 15),
                  height: 60,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 14, 9, 9),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Center(
                    child: Text(
                      "Next",
                      style: TextStyle(
                        fontFamily: "HappyMonkey",
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
