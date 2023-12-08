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
                height: 40,
              ),
              Column(
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
              SizedBox(
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
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "Tiers",
                            textScaleFactor: 1.5,
                            style: TextStyle(
                              color: ColorLib.kPrimary,
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ),
                      TableCell(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("Basic", textScaleFactor: 1.5,style: TextStyle(fontSize: 12)),
                        ),
                      ),
                      TableCell(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("Gold", textScaleFactor: 1.5,style: TextStyle(fontSize: 12)),
                        ),
                      ),
                      TableCell(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("Platinum", textScaleFactor: 1.5,style: TextStyle(fontSize: 12)),
                        ),
                      ),
                    ],
                  ),
                  TableRow(
                    decoration: BoxDecoration(color: Colors.grey[200]),
                    children: [
                      TableCell(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "Video Stream",
                            textScaleFactor: 1.5,
                            style: TextStyle(
                              color: ColorLib.kPrimary,
                              fontSize: 15,
                            ),
                          ),
                        ),
                      ),
                      TableCell(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("Limited Access", textScaleFactor: 1.5,style: TextStyle(fontSize: 12)),
                        ),
                      ),
                      TableCell(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("Unlimited Access", textScaleFactor: 1.5,style: TextStyle(fontSize: 12)),
                        ),
                      ),
                      TableCell(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("Unlimited Access", textScaleFactor: 1.5,style: TextStyle(fontSize: 12)),
                        ),
                      ),
                    ],
                  ),
                  TableRow(
                    decoration: BoxDecoration(color: Colors.grey[200]),
                    children: [
                      TableCell(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "Live Stream",
                            textScaleFactor: 1.5,
                            style: TextStyle(
                              color: ColorLib.kPrimary,
                              fontSize: 15,
                            ),
                          ),
                        ),
                      ),
                      TableCell(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(Icons.linear_scale_sharp),
                        ),
                      ),
                      TableCell(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(Icons.check),
                        ),
                      ),
                      TableCell(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(Icons.check),
                        ),
                      ),
                    ],
                  ),
                  TableRow(
                    decoration: BoxDecoration(color: Colors.grey[200]),
                    children: [
                      TableCell(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "Ads",
                            textScaleFactor: 1.5,
                            style: TextStyle(
                              color: ColorLib.kPrimary,
                              fontSize: 15,
                            ),
                          ),
                        ),
                      ),
                      TableCell(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(Icons.linear_scale_sharp),
                        ),
                      ),
                      TableCell(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(Icons.linear_scale_sharp),
                        ),
                      ),
                      TableCell(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(Icons.check),
                        ),
                      ),
                    ],
                  ),
                  TableRow(
                    decoration: BoxDecoration(color: Colors.grey[200]),
                    children: [
                      TableCell(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "Price",
                            textScaleFactor: 1.5,
                            style: TextStyle(
                              color: ColorLib.kPrimary,
                              fontSize: 15,
                            ),
                          ),
                        ),
                      ),
                      TableCell(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("Free", textScaleFactor: 1.5),
                        ),
                      ),
                      TableCell(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("\$ 1.99", textScaleFactor: 1.5),
                        ),
                      ),
                      TableCell(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("\$ 3.99", textScaleFactor: 1.5),
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
