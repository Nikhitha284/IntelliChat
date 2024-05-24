import 'package:flutter/material.dart';
import 'your_profile.dart'; // Import your_profile.dart

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              'assets/images/logo.png',
              width: 150,
              height: 150,
            ),
            Image.asset(
              'assets/images/img.png',
              width: 300,
              height: 200,
            ),
        InkWell(
          onTap: () {
            // Navigate to YourProfile page
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => YourProfile()),
            );
          },
          child: Container(
            height: 50, // Adjust height as needed
            width: 100,
            decoration: BoxDecoration(
              image: DecorationImage(
                //use this start button to direct to signin portal
                image: AssetImage('assets/images/start_btn.png'),
                //fit: BoxFit.cover, // Fills the container with the logo
              ),
            ),
          ),
        ),

        SizedBox(height: 50),
          ],
        ),
      ),
    );
  }
}
