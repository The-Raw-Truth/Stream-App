import 'package:app/routes/app_routes.dart';
import 'package:app/utils/color_lib.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Downloadscreen extends StatefulWidget {
  const Downloadscreen({super.key});

  @override
  State<Downloadscreen> createState() => _DownloadscreenState();
}

class _DownloadscreenState extends State<Downloadscreen> {
  //controllers
  final PageController _controller = PageController();
  //keep track of the pages we're on
  bool onLastpage = false;
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 118, 9, 1),
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: SizedBox(
              height: screenHeight * 0.05,
              width: screenWidth * 0.05,
              child: Image.asset('assets/images/cancel_white.png'),
            ),
          ),
          title: Text(
            'Downloads',
            style: TextStyle(fontSize: screenWidth * 0.05, color: Colors.white),
          ),
          centerTitle: true,
          backgroundColor: ColorLib.kDarkblue,
        ),
        body: Stack(
          children: [
            //the main background should be here

            PageView(
              controller: _controller,
              onPageChanged: (index) {
                setState(() {
                  onLastpage = (index == 2);
                });
              },
              children: [
                //the text or pages
                //first slide /page
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: screenHeight * 0.5,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Download your favourite movie\n'
                        'and Tv shows and watch them\n'
                        'while you\'re offline',
                        style: TextStyle(
                          fontSize: screenWidth * 0.05,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: screenHeight * 0.05,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Enjoy THE RAW TRUTH while\n'
                        'you\'re travelling or at home\n'
                        'during loadshedding.',
                        style: TextStyle(fontSize: screenWidth * 0.05,
                        color: Colors.white,),
                      ),
                    ),
                  ],
                ),
                //2nd slide/ page
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: screenHeight * 0.5,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Access your downloaded\n'
                        'content for up to 25 days',
                        style: TextStyle(
                            fontSize: screenWidth * 0.05,
                            fontWeight: FontWeight.bold,color: Colors.white,),
                      ),
                    ),
                    SizedBox(
                      height: screenHeight * 0.05,
                    ),
                    Text(
                      'Across all of your profiles\n'
                      'You can download music',
                      style: TextStyle(
                        fontSize: screenWidth * 0.05,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                //the last slide/page
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: screenHeight * 0.5,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Enjoy high picture quality and\n'
                        'effecient storage usage',
                        style: TextStyle(
                            fontSize: screenWidth * 0.05,
                            fontWeight: FontWeight.bold,color: Colors.white,),
                      ),
                    ),
                    SizedBox(
                      height: screenHeight * 0.05,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Across all of your profiles\n'
                        'You can download music',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: screenWidth * 0.05,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            //the dot indictors
            Container(
              alignment: const Alignment(0, 0.75),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: screenHeight * 0.8,
                    ),
                    //dot indicator
                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: SmoothPageIndicator(
                        controller: _controller,
                        count: 3,
                        effect: const SlideEffect(
                          dotColor: Colors.white,
                          activeDotColor: Colors.amber,
                        ),
                      ),
                    ),
                    //on last page
                    onLastpage
                        ? Column(
                            children: [
                              SizedBox(
                                width: screenWidth * 0.7,
                                height: screenHeight * 0.05,
                                child: MaterialButton(
                                  onPressed: () {},
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  color: Colors.white,
                                  child: Center(
                                    child: Text(
                                      'Find something to watch',
                                      style: TextStyle(
                                          fontSize: screenWidth * 0.05,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: screenHeight * 0.1,
                              ),
                              SizedBox(
                                width: screenWidth * 0.7,
                                height: screenHeight * 0.05,
                                child: MaterialButton(
                                  onPressed: () {
                                    GoRouter.of(context)
                                        .pushNamed(AppRoutes.downloadsettings);
                                  },
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  color: ColorLib.kDarkblue,
                                  child: Center(
                                    child: Text(
                                      'Download settings',
                                      style: TextStyle(
                                          fontSize: screenWidth * 0.05,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          )
                        : SizedBox(
                            width: screenWidth * 0.7,
                            height: screenHeight * 0.05,
                            child: MaterialButton(
                              onPressed: () {
                                _controller.nextPage(
                                    duration: const Duration(milliseconds: 300),
                                    curve: Curves.easeIn);
                              },
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              color: Colors.white,
                              child: Text(
                                'Next tip',
                                style: TextStyle(fontSize: screenWidth * 0.05),
                              ),
                            ),
                          ),
                  ],
                ),
              ),
            )
          ],
        ));
  }
}
