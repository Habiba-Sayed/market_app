import 'package:flutter/material.dart';

class Productdetail extends StatefulWidget {
  const Productdetail({super.key});

  @override
  State<Productdetail> createState() => _ProductdetailState();
}

class _ProductdetailState extends State<Productdetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          AppBar(leading: Icon(Icons.arrow_back_ios_new), toolbarHeight: 35),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
                alignment: Alignment.topCenter,
                image: AssetImage(
                  "assets/iphone.jpg",
                ))),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              padding: EdgeInsets.only(top: 30, left: 20, right: 20),
              width: double.infinity,
              height: 500,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40)),
                color: Colors.white,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "\$409.00",
                        style: TextStyle(
                            fontSize: 25,
                            color: Colors.purpleAccent[200],
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "\$509.00",
                        style: TextStyle(
                            fontSize: 15,
                            color: Colors.grey[400],
                            fontWeight: FontWeight.bold,
                            decoration: TextDecoration.lineThrough,
                            decorationColor: Colors.grey[400]),
                      ),
                      SizedBox(
                        width: 130,
                      ),
                      Icon(
                        Icons.favorite,
                        color: Colors.red,
                        size: 30,
                      )
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    "IPhone 13 pink",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Description",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                      style: TextStyle(
                          fontWeight: FontWeight.w500, color: Colors.grey[500]),
                      "The iPhone 13 display has rounded corners that follow a beautiful curved design, and these corners are within a standard rectangle. When measured as a standard rectangular shape, the screen is 6.06 inches diagonally"),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    "Color",
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 19),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      CircleAvatar(
                          radius: 20,
                          backgroundColor: Colors.pink[100],
                          child: Icon(
                            Icons.done,
                            color: Colors.white,
                          )),
                      SizedBox(
                        width: 5,
                      ),
                      CircleAvatar(
                        radius: 20,
                        backgroundColor: Colors.blue,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      CircleAvatar(
                        radius: 20,
                        backgroundColor: Colors.red,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 70,
                  ),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      alignment: Alignment.center,
                      width: double.infinity,
                      height: 50,
                      decoration: BoxDecoration(
                          color: Colors.purpleAccent[200],
                          borderRadius: BorderRadius.circular(15)),
                      child: Text(
                        "Add to Cart",
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 25,
                            color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
