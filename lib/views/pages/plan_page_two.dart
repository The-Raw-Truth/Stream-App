import 'package:app/routes/app_routes.dart';
import 'package:app/utils/color_lib.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class PlanPage2 extends StatefulWidget {
  const PlanPage2({super.key});

  @override
  State<PlanPage2> createState() => _PlanPage2State();
}

class _PlanPage2State extends State<PlanPage2> {
  bool isBasics = false;
  bool isGold = false;
  bool isPlantanium = false;

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
              const SizedBox(
                height: 40,
              ),
              const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Choose your plan.",
                    style: TextStyle(
                        color: ColorLib.kPrimary,
                        fontSize: 25,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Here are tiers of our subscription plan",
                    style: TextStyle(
                      color: ColorLib.kPrimary,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Table(
                textDirection: TextDirection.ltr,
                defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                border: TableBorder.all(width: 1.5, color: Colors.red),
                children: [
                  TableRow(
                    decoration: BoxDecoration(color: Colors.grey[200]),
                    children: [
                      TableCell(
                        child: Container(
                          color: Color.fromARGB(255, 255, 182, 26),
                          child: const Padding(
                            padding: EdgeInsets.all(17),
                            child: Text(
                              "Tiers",
                              textScaleFactor: 1.5,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                              ),
                            ),
                          ),
                        ),
                      ),
                      const TableCell(
                        child: Padding(
                          padding: EdgeInsets.all(10),
                          child: Center(
                            child: Text("Basic",
                                textScaleFactor: 1.5,
                                style: TextStyle(fontSize: 12)),
                          ),
                        ),
                      ),
                      const TableCell(
                        child: Padding(
                          padding: EdgeInsets.all(10),
                          child: Center(
                            child: Text("Gold",
                                textScaleFactor: 1.5,
                                style: TextStyle(fontSize: 12)),
                          ),
                        ),
                      ),
                      const TableCell(
                        child: Padding(
                          padding: EdgeInsets.all(10),
                          child: Center(
                            child: Text("Platinum",
                                textScaleFactor: 1.5,
                                style: TextStyle(fontSize: 12)),
                          ),
                        ),
                      ),
                    ],
                  ),
                  TableRow(
                    decoration: BoxDecoration(color: Colors.grey[200]),
                    children: [
                      TableCell(
                        child: Container(
                          color: Color.fromARGB(255, 238, 165, 9),
                          child: const Padding(
                            padding: EdgeInsets.all(15),
                            child: Text(
                              "Video\nStream",
                              textScaleFactor: 1.5,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 13,
                              ),
                            ),
                          ),
                        ),
                      ),
                      const TableCell(
                        child: Padding(
                          padding: EdgeInsets.all(10),
                          child: Text("Limited Access",
                              textScaleFactor: 1.5,
                              style: TextStyle(fontSize: 12)),
                        ),
                      ),
                      const TableCell(
                        child: Padding(
                          padding: EdgeInsets.all(10),
                          child: Text("Unlimited Access",
                              textScaleFactor: 1.5,
                              style: TextStyle(fontSize: 12)),
                        ),
                      ),
                      TableCell(
                        child: Padding(
                          padding: const EdgeInsets.all(10),
                          child: Text("Unlimited Access",
                              textScaleFactor: 1.5,
                              style: TextStyle(fontSize: 12)),
                        ),
                      ),
                    ],
                  ),
                  TableRow(
                    decoration: BoxDecoration(color: Colors.grey[200]),
                    children: [
                      TableCell(
                        child: Container(
                          color: Color.fromARGB(255, 255, 182, 26),
                          child: Padding(
                            padding: const EdgeInsets.all(10),
                            child: Text(
                              "Live\nStream",
                              textScaleFactor: 1.5,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 13,
                              ),
                            ),
                          ),
                        ),
                      ),
                      TableCell(
                        child: Padding(
                          padding: const EdgeInsets.all(10),
                          child: Icon(Icons.linear_scale_sharp),
                        ),
                      ),
                      TableCell(
                        child: Padding(
                          padding: const EdgeInsets.all(10),
                          child: Icon(Icons.check),
                        ),
                      ),
                      TableCell(
                        child: Padding(
                          padding: const EdgeInsets.all(10),
                          child: Icon(Icons.check),
                        ),
                      ),
                    ],
                  ),
                  TableRow(
                    decoration: BoxDecoration(color: Colors.grey[200]),
                    children: [
                      TableCell(
                        child: Container(
                          color: Color.fromARGB(255, 238, 165, 9),
                          child: Padding(
                            padding: const EdgeInsets.all(10),
                            child: Text(
                              "Ads",
                              textScaleFactor: 1.5,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                              ),
                            ),
                          ),
                        ),
                      ),
                      TableCell(
                        child: Padding(
                          padding: const EdgeInsets.all(10),
                          child: Icon(Icons.linear_scale_sharp),
                        ),
                      ),
                      TableCell(
                        child: Padding(
                          padding: const EdgeInsets.all(10),
                          child: Icon(Icons.linear_scale_sharp),
                        ),
                      ),
                      TableCell(
                        child: Padding(
                          padding: const EdgeInsets.all(10),
                          child: Icon(Icons.check),
                        ),
                      ),
                    ],
                  ),
                  TableRow(
                    decoration: BoxDecoration(color: Colors.grey[200]),
                    children: [
                      TableCell(
                        child: Container(
                          color: Color.fromARGB(255, 255, 182, 26),
                          child: Padding(
                            padding: const EdgeInsets.all(15),
                            child: Text(
                              "Price",
                              textScaleFactor: 1.5,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                              ),
                            ),
                          ),
                        ),
                      ),
                      TableCell(
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              isBasics = !isBasics;
                            });
                          },
                          child: Center(
                            child: Padding(
                                padding: const EdgeInsets.all(10),
                                child: isBasics
                                    ? Icon(Icons.check)
                                    : Text("Free", textScaleFactor: 1.5)),
                          ),
                        ),
                      ),
                      TableCell(
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              isGold = !isGold;
                            });
                          },
                          child: Center(
                            child: Padding(
                              padding: const EdgeInsets.all(10),
                              child: isGold
                                  ? Icon(Icons.check)
                                  : Text("\$ 1.99", textScaleFactor: 1.5),
                            ),
                          ),
                        ),
                      ),
                      TableCell(
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              isPlantanium = !isPlantanium;
                            });
                          },
                          child: Center(
                            child: Padding(
                              padding: const EdgeInsets.all(10),
                              child: isPlantanium
                                  ? Icon(Icons.check)
                                  : Text("\$ 3.99", textScaleFactor: 1.5),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  // ... (Repeat the pattern for other rows)
                ],
              ),
              SizedBox(
                height: 70,
              ),
              GestureDetector(
                onTap: () {
                  setState(() {});
                  GoRouter.of(context).pushNamed(AppRoutes.subscreen3);
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
