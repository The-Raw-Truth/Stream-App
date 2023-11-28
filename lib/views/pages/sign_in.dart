import 'package:app/routes/app_routes.dart';
import 'package:app/utils/color_lib.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SignIn extends StatelessWidget {
  const SignIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: SafeArea(
            child: ListView(
              children: [
                SizedBox(
                  height: 170,
                  width: 170,
                  child: Image.asset(
                    "assets/images/logo.png",
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Welcome Back!",
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      height: 2,
                    ),
                    Text(
                      "Login to continue on our app",
                      style:
                          TextStyle(fontSize: 13, color: ColorLib.kBlackLight),
                    )
                  ],
                ),
                SizedBox(
                  height: 16,
                ),
                SizedBox(
                  height: 200,
                  child: Column(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "E-mail Address",
                            style: TextStyle(
                                fontSize: 13, fontWeight: FontWeight.w500),
                          ),
                          TextFormField(
                            decoration: InputDecoration(
                              hintText: 'Enter your email address',
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 33,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Password",
                            style: TextStyle(
                                fontSize: 13, fontWeight: FontWeight.w500),
                          ),
                          TextFormField(
                            obscureText: true,
                            decoration: InputDecoration(
                              hintText: 'Enter Password',
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
                Text(
                  "By signing up, you are agreeing to our terms and conditions and Privacy Policy",
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 15,
                ),
                Column(
                  children: [
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
                          color: ColorLib.kPrimary,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: const Center(
                          child: Text(
                            "Login",
                            style: TextStyle(
                              fontFamily: "HappyMonkey",
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Text(
                      "or",
                      style: TextStyle(fontSize: 18),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    GestureDetector(
                      onTap: () {
                        GoRouter.of(context)
                            .pushReplacementNamed(AppRoutes.signin);
                      },
                      child: Container(
                        margin: const EdgeInsets.only(top: 15),
                        height: 60,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 255, 255, 255),
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(width: 1)),
                        child: Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset("assets/images/download (1).png"),
                              Text(
                                "Continue with Google",
                                style: TextStyle(
                                  fontFamily: "HappyMonkey",
                                  color: ColorLib.kBlackLight,
                                  fontSize: 16,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 40,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("New to Raw ?  "),
                    GestureDetector(
                        onTap: () {
                          GoRouter.of(context)
                              .pushReplacementNamed(AppRoutes.signup);
                        },
                        child: Text(
                          "Create Account",
                          style: TextStyle(color: ColorLib.kPrimary),
                        )),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
