import 'package:app/routes/app_routes.dart';
import 'package:app/utils/color_lib.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CardSetup extends StatelessWidget {
  const CardSetup({super.key});

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
                  width: 50,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      SizedBox(
                        height: 50,
                        width: 50,
                        child: Image.asset("assets/images/Group 9139.png"),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Set up your credit or debit card",
                style: TextStyle(
                  color: ColorLib.kPrimary,
                  fontWeight: FontWeight.bold,
                  fontSize: 32,
                ),
              ),
              SizedBox(
                width: 50,
                height: 50,
                child: Image.asset('assets/images/Group 9140.png',
                    fit: BoxFit.scaleDown),
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
              Container(
                child: Form(
                  child: Column(
                    children: [
                      TextFormField(
                        decoration: InputDecoration(
                            hintText: 'Card Number',
                            filled: true,
                            border: OutlineInputBorder()),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                            hintText: 'Expiry date',
                            filled: true,
                            border: OutlineInputBorder()),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                            hintText: 'CVV',
                            filled: true,
                            border: OutlineInputBorder()),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                            hintText: 'First Name',
                            filled: true,
                            border: OutlineInputBorder()),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                            hintText: 'Last Name ',
                            filled: true,
                            border: OutlineInputBorder()),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: () {
                  GoRouter.of(context)
                      .pushReplacementNamed(AppRoutes.subscreen2);
                },
                child: Container(
                    margin: const EdgeInsets.only(bottom: 15),
                    height: 70,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 238, 235, 235),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [Text("\$2.99/month"), Text("Platinum")],
                          ),
                          Text("Change")
                        ],
                      ),
                    )),
              ),
              SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: () {
                  GoRouter.of(context)
                      .pushReplacementNamed(AppRoutes.home);
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
                      "Start Membership",
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
