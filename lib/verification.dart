import 'package:flutter/material.dart';

class Verification_screen extends StatelessWidget {
  const Verification_screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.arrow_back_sharp),
        ),
        body: Container(
            margin: EdgeInsets.only(
              top: 50,
              right: 20,
              left: 25,
            ),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(
                "Verification",
                style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Please enter the OTP code sent to you by SMS.",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 100,
              ),
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 246, 195, 255),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Icon(
                        Icons.minimize,
                        color: Colors.grey[850],
                      ),
                    ),
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 246, 195, 255),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Icon(
                        Icons.minimize,
                        color: Colors.grey[850],
                      ),
                    ),
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 246, 195, 255),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Icon(
                        Icons.minimize,
                        color: Colors.grey[850],
                      ),
                    ),
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 246, 195, 255),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Icon(
                        Icons.minimize,
                        color: Colors.grey[850],
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 80,
                  ),
                  Text(
                    "Didn`t get a code? ",
                    style: TextStyle(
                        color: Colors.grey[500],
                        fontSize: 15,
                        fontWeight: FontWeight.w600),
                  ),
                  Text(
                    "Send again ",
                    style: TextStyle(
                        color: Colors.purpleAccent[100],
                        fontSize: 15,
                        fontWeight: FontWeight.w600),
                  ),
                ],
              ),
              Container(
                alignment: Alignment.center,
                margin: EdgeInsets.only(top: 250),
                width: double.infinity,
                height: 45,
                decoration: BoxDecoration(
                  color: Colors.purpleAccent[100],
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Text(
                  "Verify",
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w600,
                      color: Colors.white),
                ),
              ),
            ])));
  }
}
