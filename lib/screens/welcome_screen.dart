import 'package:flutter/material.dart';
import 'package:travel_guide_app/Authentication_Page/LoginPage.dart';

class Welcomescreen extends StatelessWidget {
  const Welcomescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
        image: AssetImage("images/lake.jpg"),
        fit: BoxFit.cover,
        opacity: 0.6,
      )),
      child: Material(
        color: Colors.transparent,
        child: SafeArea(
          child: Padding(
              padding: EdgeInsets.symmetric(vertical: 50, horizontal: 35),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    "Find your\nDream Destination",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 30,
                      color: Colors.white,
                      height: 1.1,
                    ),
                  ),
                  SizedBox(height: 100),
                  ButtonTheme(
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => LoginPage()),
                        );
                      },
                      child: Text(
                        "Explore now",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                          color: Colors.white,
                          height: 1.1,
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        fixedSize: Size(500, 50),
                      ),
                    ),
                    minWidth: double.infinity,
                  )
                ],
              )),
        ),
      ),
    );
  }
}
