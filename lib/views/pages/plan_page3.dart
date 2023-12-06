import 'package:app/routes/app_routes.dart';
import 'package:app/utils/color_lib.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class PlanPage3 extends StatelessWidget {
  const PlanPage3({super.key});

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
                height: 90,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 70,
                    width: 70,
                    child: Image.asset("assets/images/Group 9139.png"),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                "Choose how to pay.",
                style: TextStyle(
                  color: ColorLib.kPrimary,
                  fontWeight: FontWeight.bold,
                  fontSize: 32,
                ),
              ),
              SizedBox(
                height: 70,
              ),
              Text(
                "Your payment is encrypted and you can change how you pay at any time.",
                style: TextStyle(
                  fontSize: 22,
                  color: ColorLib.kPrimary,
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                "Secure for peace of mind.\nCancel easily online.",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: ColorLib.kPrimary,
                ),
              ),
              SizedBox(
                height: 30,
              ),
              GestureDetector(
                onTap: () {
                  GoRouter.of(context)
                      .pushReplacementNamed(AppRoutes.cardsetup);
                },
                child: Container(
                    margin: const EdgeInsets.only(bottom: 15),
                    height: 100,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 238, 235, 235),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal:20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            width: 200,
                            child: Image.asset('assets/images/Group 9140.png'),
                          ),
                          Icon(Icons.arrow_forward_ios_rounded)
                        ],
                      ),
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
