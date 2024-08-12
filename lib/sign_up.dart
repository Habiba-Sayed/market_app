import 'package:flutter/material.dart';

class Sign_Up extends StatelessWidget {
  const Sign_Up({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back_sharp),
      ),
      body: Container(
        margin: EdgeInsets.only(
          // top: 80,
          right: 20,
          left: 25,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Sign Up",
              style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
            ),
            Text(
              "Please enter your information below to sign up.",
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
            ),
            Center(
                child: Container(
              margin: EdgeInsets.only(top: 40, bottom: 20),
              width: 200,
              height: 160,
              child: Image.asset(
                  "assets/hand-drawn-shopping-cartoon-illustration.png"),
            )),
            Text(
              "Name",
              style: TextStyle(
                  color: Colors.grey[500], fontWeight: FontWeight.bold),
            ),
            Container(
              padding: EdgeInsets.only(left: 10, right: 10),
              margin: EdgeInsets.only(top: 10, bottom: 20),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  border: Border(bottom: BorderSide.none),
                  boxShadow: [
                    BoxShadow(
                        blurStyle: BlurStyle.normal,
                        blurRadius: 5,
                        spreadRadius: 1,
                        color: Colors.grey)
                  ]),
              child: TextField(
                decoration: InputDecoration(
                    hintText: "Please enter your name",
                    hintStyle: TextStyle(
                      color: Colors.grey[500],
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                    ),
                    border: InputBorder.none),
              ),
            ),
            Text(
              "Email",
              style: TextStyle(
                  color: Colors.grey[500], fontWeight: FontWeight.bold),
            ),
            Container(
              padding: EdgeInsets.only(
                left: 10,
                right: 10,
              ),
              margin: EdgeInsets.only(top: 10, bottom: 20),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  border: Border(bottom: BorderSide.none),
                  boxShadow: [
                    BoxShadow(
                        blurStyle: BlurStyle.normal,
                        blurRadius: 5,
                        spreadRadius: 1,
                        color: Colors.grey)
                  ]),
              child: TextField(
                decoration: InputDecoration(
                    hintText: "Please enter your email",
                    hintStyle: TextStyle(
                      color: Colors.grey[500],
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                    ),
                    border: InputBorder.none),
              ),
            ),
            Text(
              "Password",
              style: TextStyle(
                  color: Colors.grey[500], fontWeight: FontWeight.bold),
            ),
            Container(
              padding: EdgeInsets.only(
                left: 10,
                right: 10,
              ),
              margin: EdgeInsets.only(
                top: 10,
              ),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  border: Border(bottom: BorderSide.none),
                  boxShadow: [
                    BoxShadow(
                        blurStyle: BlurStyle.normal,
                        blurRadius: 5,
                        spreadRadius: 1,
                        color: Colors.grey)
                  ]),
              child: TextField(
                decoration: InputDecoration(
                    hintText: "Please enter your password",
                    hintStyle: TextStyle(
                      color: Colors.grey[500],
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                    ),
                    border: InputBorder.none),
              ),
            ),
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(top: 30),
              width: double.infinity,
              height: 45,
              decoration: BoxDecoration(
                color: Colors.purpleAccent[100],
                borderRadius: BorderRadius.circular(10),
              ),
              child: Text(
                "Sign up",
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                    color: Colors.white),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 80,
                ),
                Text(
                  "Already have an account? ",
                  style: TextStyle(
                      color: Colors.grey[500],
                      fontSize: 15,
                      fontWeight: FontWeight.w600),
                ),
                Text(
                  "Sign in ",
                  style: TextStyle(
                      color: Colors.purpleAccent[100],
                      fontSize: 15,
                      fontWeight: FontWeight.w600),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
