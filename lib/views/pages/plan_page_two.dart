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
              SizedBox(
                height: 70,
              ),
              Table(
                textDirection: TextDirection.ltr,
                defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                border: TableBorder.all(width: 1.5, color: Colors.red),
                children: const [
                  TableRow(children: [
                    Text(
                      "Tiers",
                      textScaleFactor: 1.5,
                      style: TextStyle(color: ColorLib.kPrimary, fontSize: 20),
                    ),
                    Text("Basic", textScaleFactor: 1.5),
                    Text("Gold", textScaleFactor: 1.5),
                    Text("Platinum", textScaleFactor: 1.5),
                  ]),
                  TableRow(children: [
                    Text(
                      "Video Stream",
                      textScaleFactor: 1.5,
                      style: TextStyle(color: ColorLib.kPrimary, fontSize: 20),
                    ),
                    Text("Limited Access", textScaleFactor: 1.5),
                    Text("Unlimited Access", textScaleFactor: 1.5),
                    Text("Unlimited Access", textScaleFactor: 1.5),
                  ]),
                  TableRow(children: [
                    Text(
                      "Live Stream",
                      textScaleFactor: 1.5,
                      style: TextStyle(color: ColorLib.kPrimary, fontSize: 20),
                    ),
                    Icon(Icons.linear_scale_sharp),
                    Icon(Icons.check),
                    Icon(Icons.check),
                  ]),
                  TableRow(children: [
                    Text(
                      "Ads",
                      textScaleFactor: 1.5,
                      style: TextStyle(color: ColorLib.kPrimary, fontSize: 20),
                    ),
                    Icon(Icons.linear_scale_sharp),
                    Icon(Icons.check),
                    Icon(Icons.check),
                  ]),
                  TableRow(children: [
                    Text(
                      "Price",
                      textScaleFactor: 1.5,
                      style: TextStyle(color: ColorLib.kPrimary, fontSize: 20),
                    ),
                    Text("Free", textScaleFactor: 1.5),
                    Text("\$ 1.99", textScaleFactor: 1.5),
                    Text("\$ 3.99", textScaleFactor: 1.5),
                  ]),
                ],
              ),
              SizedBox(
                height: 70,
              ),
              GestureDetector(
                onTap: () {
                  GoRouter.of(context).pushReplacementNamed(AppRoutes.subscreen3);
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
