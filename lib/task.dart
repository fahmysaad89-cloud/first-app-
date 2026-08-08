import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: BusinessCard(), debugShowCheckedModeBanner: false);
  }
}

class BusinessCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 74, 76, 77),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 32, 218, 224),
        title: Text(
          "I Dont Need To Make Full AppBar.",
          style: TextStyle(color: Colors.deepOrange),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 200,
              height: 200,
              // color: Colors.blueGrey,
              decoration: BoxDecoration(
                // color: Colors.blue,
                shape: .circle,
                image: .new(image: AssetImage("images/1.jpeg")),
                border: BoxBorder.all(color: Colors.greenAccent, width: 2),
              ),
            ),
            SizedBox(height: 10),
            Text(
              "Saad fahmy",
              style: TextStyle(
                color: Colors.blue,
                fontSize: 34,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "Flutter Developer",
              style: TextStyle(
                color: Colors.cyanAccent,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            Divider(
              thickness: 2,
              height: 40,
              color: const Color.fromARGB(255, 231, 199, 156),
              indent: 100,
              endIndent: 100,
            ),
            SizedBox(height: 3),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.blueGrey,
              ),
              margin: EdgeInsets.symmetric(vertical: 3, horizontal: 25),
              padding: EdgeInsets.all(30),
              // color: Colors.blueGrey,
              child: Row(
                children: [
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      border: Border.all(
                        width: 2,
                        color: const Color.fromARGB(255, 35, 230, 67),
                      ),
                    ),
                    child: Icon(
                      Icons.phone,
                      color: const Color.fromARGB(255, 47, 228, 56),
                      size: 30,
                    ),
                  ),
                  SizedBox(width: 20),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "01223730129",
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: .bold,
                        ),
                      ),
                      Text(
                        "phone",
                        style: TextStyle(fontSize: 18, color: Colors.white),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            // SizedBox(width: 10),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.blueGrey,
              ),
              margin: EdgeInsets.symmetric(vertical: 5, horizontal: 25),
              padding: EdgeInsets.all(30),
              child: Row(
                children: [
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      border: Border.all(width: 2, color: Colors.cyan),
                    ),
                    child: Icon(
                      Icons.email,
                      color: Colors.tealAccent,
                      size: 30,
                    ),
                  ),
                  SizedBox(width: 20),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "fahmysaad89@gmail.com",
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: .bold,
                        ),
                      ),
                      Text(
                        "email",
                        style: TextStyle(fontSize: 18, color: Colors.white),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.blueGrey,
              ),
              margin: EdgeInsets.symmetric(vertical: 5, horizontal: 25),
              padding: EdgeInsets.all(30),
              child: Row(
                children: [
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      border: Border.all(
                        width: 2,
                        color: const Color.fromARGB(255, 107, 224, 96),
                      ),
                    ),
                    child: Icon(
                      Icons.location_on,
                      color: const Color.fromARGB(255, 175, 230, 112),
                      size: 30,
                    ),
                  ),
                  SizedBox(width: 20),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Mnofia ,Egypt",
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: .bold,
                        ),
                      ),
                      Text(
                        "Location",
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
