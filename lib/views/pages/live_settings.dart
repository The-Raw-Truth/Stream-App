import 'package:app/utils/color_lib.dart';
import 'package:flutter/material.dart';

class Livesettings extends StatelessWidget {
  const Livesettings({super.key});
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: ColorLib.kPrimary,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text('Live settings'),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.keyboard_arrow_left_rounded,
            color: Colors.white,
            size: screenWidth * 0.1,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: screenHeight * 0.05,
            ),
            //the add a LIVE title
            SizedBox(
              height: screenHeight * 0.08,
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    width: screenWidth * 0.05,
                  ),
                  Icon(
                    Icons.circle,
                    color: Colors.white,
                    size: screenWidth * 0.05,
                  ),
                  SizedBox(
                    width: screenWidth * 0.05,
                  ),
                  Text(
                    'Add a LIVE title',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: screenWidth * 0.05,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
            ),
            //the text field
            Container(
              height: screenHeight * 0.2,
              width: screenWidth * 0.8,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.white,
              ),
              child: TextField(
                cursorColor: ColorLib.kPrimary,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide.none,
                    ),
                    fillColor: Colors.white,
                    filled: true),
              ),
            ),
            //add a live topic or discussion
            SizedBox(
              height: screenHeight * 0.08,
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    width: screenWidth * 0.05,
                  ),
                  Icon(
                    Icons.circle,
                    color: Colors.white,
                    size: screenWidth * 0.05,
                  ),
                  SizedBox(
                    width: screenWidth * 0.05,
                  ),
                  Text(
                    'Add a LIVE topic or discusssion',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: screenWidth * 0.05,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
            ),
            //the text field
            Container(
              height: screenHeight * 0.2,
              width: screenWidth * 0.8,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.white,
              ),
              child: TextField(
                cursorColor: ColorLib.kPrimary,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide.none,
                    ),
                    fillColor: Colors.white,
                    filled: true),
              ),
            ),
            SizedBox(
              height: screenHeight * 0.1,
            ),
            //update
            Padding(
              padding: EdgeInsets.only(
                left: screenWidth * 0.5,
              ),
              child: SizedBox(
                width: screenWidth * 0.35,
                height: screenHeight * 0.07,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: MaterialButton(
                    onPressed: () {},
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    color: ColorLib.kDarkblue,
                    child: Center(
                      child: Text(
                        'Update',
                        style: TextStyle(
                            fontSize: screenWidth * 0.06,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
