import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Sign_In extends StatelessWidget {
  const Sign_In({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(
          top: 80,
          right: 20,
          left: 25,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Welcome back!",
              style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
            ),
            Text(
              "Login to your existing account.",
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
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
              "Email Address",
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
                    hintText: "e.g name@example.com",
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
                    hintText: "enter your password",
                    hintStyle: TextStyle(
                      color: Colors.grey[500],
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                    ),
                    border: InputBorder.none),
              ),
            ),
            Row(
              children: [
                Checkbox(
                  value: true,
                  onChanged: (value) {},
                ),
                Text(
                  "Remember me",
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey[500]),
                ),
                Spacer(),
                Text(
                  "Forgot password?",
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey[500]),
                ),
              ],
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
                "Login",
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                    color: Colors.white),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.g_mobiledata_outlined,
                        size: 100,
                        color: Colors.blue,
                      )),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.facebook,
                        size: 65,
                        color: Colors.blue,
                      )),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Don`t have an account? ",
                  style: TextStyle(
                      color: Colors.grey[500],
                      fontSize: 15,
                      fontWeight: FontWeight.w600),
                ),
                Text(
                  "Sign Up ",
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
