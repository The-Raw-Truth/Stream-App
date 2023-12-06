import 'package:app/utils/color_lib.dart';
import 'package:flutter/material.dart';

class Downloadquality extends StatefulWidget {
  const Downloadquality({super.key});

  @override
  State<Downloadquality> createState() => _DownloadqualityState();
}

class _DownloadqualityState extends State<Downloadquality> {
  bool isasked = false;
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Download Quality',
          style: TextStyle(fontSize: screenWidth * 0.05, color: Colors.white),
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.keyboard_arrow_left_sharp,
            color: Colors.white,
            size: screenWidth * 0.05,
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      backgroundColor: ColorLib.kPrimary,
      body: ListView(
        children: [
          ListTile(
            title: Text(
              'Ask before download',
              style: TextStyle(
                  fontSize: screenWidth * 0.05,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            trailing: Switch(
              value: isasked,
              onChanged: (value) {
                setState(() {
                  isasked = !isasked;
                });
              },
              activeColor: Colors.white,
              activeTrackColor: Colors.amber,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          ListTile(
            onTap: () {},
            title: Text(
              'Lowest Quality',
              style: TextStyle(
                  fontSize: screenWidth * 0.05,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          ),
          ListTile(
            onTap: () {},
            title: Text(
              'Low Quality',
              style: TextStyle(
                  fontSize: screenWidth * 0.05,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          ),
          ListTile(
            onTap: () {},
            title: Text(
              'Standard Quality',
              style: TextStyle(
                  fontSize: screenWidth * 0.05,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          ),
          ListTile(
            onTap: () {},
            title: Text(
              'Good Quality',
              style: TextStyle(
                  fontSize: screenWidth * 0.05,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          ),
          ListTile(
            onTap: () {},
            title: Text(
              'High Quality',
              style: TextStyle(
                  fontSize: screenWidth * 0.05,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
