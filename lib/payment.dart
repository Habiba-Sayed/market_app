import 'package:flutter/material.dart';

class Payment_screen extends StatelessWidget {
  const Payment_screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.arrow_back,
        ),
        title: Text(
          'Payment',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 30, right: 30),
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 190,
              ),
              CircleAvatar(
                backgroundColor: Colors.purpleAccent[100],
                radius: 30,
                child: Icon(
                  Icons.check,
                  color: Colors.white,
                  size: 35,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Payment sucssessful!",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Your order will be processed and sent to you as soon as possible",
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 15),
              ),
              Container(
                alignment: Alignment.center,
                margin: EdgeInsets.only(top: 200),
                width: double.infinity,
                height: 45,
                decoration: BoxDecoration(
                  color: Colors.purpleAccent[100],
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Text(
                  "Countinue Shopping",
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w600,
                      color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
