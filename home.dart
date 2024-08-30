import 'package:flutter/material.dart';

class Home_Screen extends StatefulWidget {
  const Home_Screen({super.key});

  @override
  State<Home_Screen> createState() => _Home_ScreenState();
}

class _Home_ScreenState extends State<Home_Screen> {
  List<String> images = [
    "assets/laptop1.jpg",
    "assets/mobile.jpg",
    "assets/makeup1.jpg",
    "assets/fashion.jpg"
  ];
  List<String> category = ["Computers", "Mobiles", "Makeup", "Fashion"];
  List<String> Cart = [
    "assets/iphone.jpg",
    "assets/macbook.jpg",
    "assets/laptop.jpg",
    "assets/mobile.jpg",
    "assets/laptop1.jpg"
  ];

  List<String> name = ["IPhone 13", "Macbook", "HeadPhone", "IPhone14", "DEll"];
  List<String> price = [
    "\$1700",
    "\$3700",
    "\$500",
    "\$3500",
    "\$2700",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 280,
        toolbarHeight: 70,
        leading: Padding(
          padding: EdgeInsets.only(left: 15),
          child: Container(
              width: 100,
              padding: EdgeInsets.only(left: 10, right: 10),
              margin: EdgeInsets.only(
                top: 10,
                bottom: 20,
              ),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                  border: Border(bottom: BorderSide.none),
                  boxShadow: [
                    BoxShadow(
                        blurStyle: BlurStyle.normal,
                        blurRadius: 10,
                        spreadRadius: 0.1,
                        color: Colors.grey,
                        offset: Offset(5, 6))
                  ]),
              child: TextField(
                decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.search,
                      color: Colors.purpleAccent[700],
                      size: 30,
                    ),
                    hintText: "Search Product",
                    hintStyle: TextStyle(
                      color: Colors.grey[500],
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                    border: InputBorder.none),
              )),
        ),
        backgroundColor: Colors.transparent,
        actions: [
          Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                      blurStyle: BlurStyle.normal,
                      blurRadius: 10,
                      spreadRadius: 0.1,
                      color: Colors.grey,
                      offset: Offset(5, 6))
                ]),
            child: Icon(
              Icons.shopping_cart_outlined,
              color: Colors.purpleAccent[700],
            ),
          ),
          SizedBox(
            width: 8,
          ),
          Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                      blurStyle: BlurStyle.normal,
                      blurRadius: 10,
                      spreadRadius: 0.1,
                      color: Colors.grey,
                      offset: Offset(5, 6))
                ]),
            child: Icon(
              Icons.notifications,
              color: Colors.purpleAccent[700],
            ),
          ),
          SizedBox(
            width: 15,
          )
        ],
      ),
      body: Padding(
        padding: EdgeInsets.only(top: 5, left: 15, right: 15),
        child: ListView(children: [
          Column(children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Special For You",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                Text(
                  "See More",
                  style: TextStyle(
                      color: Colors.grey.shade400,
                      fontWeight: FontWeight.w500,
                      fontSize: 14),
                )
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              height: 150,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: images.length,
                itemBuilder: (context, index) {
                  return Container(
                    width: 250,
                    padding: EdgeInsets.all(10),
                    margin: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey.shade400,
                              offset: Offset(1, 5),
                              blurRadius: 5)
                        ],
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                            image: AssetImage(images[index]),
                            fit: BoxFit.cover)),
                    child: Text(
                      category[index],
                      style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.w500,
                          color: Colors.white),
                    ),
                  );
                },
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Featured Products",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                Text(
                  "See More",
                  style: TextStyle(
                      color: Colors.grey.shade400,
                      fontWeight: FontWeight.w500,
                      fontSize: 14),
                )
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              height: 230,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: Cart.length,
                itemBuilder: (context, index) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        alignment: Alignment.bottomRight,
                        height: 150,
                        width: 150,
                        margin: EdgeInsets.only(right: 15, top: 10, bottom: 5),
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.grey.shade400,
                                  offset: Offset(1, 5),
                                  blurRadius: 5)
                            ],
                            borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(
                                image: AssetImage(Cart[index]),
                                fit: BoxFit.cover)),
                        child: Card(
                          color: Colors.white,
                          child: Container(
                              height: 30,
                              width: 30,
                              child: Icon(
                                Icons.favorite_outline_outlined,
                                color: Colors.purpleAccent.shade700,
                              )),
                        ),
                      ),
                      Text(
                        name[index],
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                      Text(
                        price[index],
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            color: Colors.purpleAccent.shade700),
                      ),
                    ],
                  );
                },
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Best Selling Products",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                Text(
                  "See More",
                  style: TextStyle(
                      color: Colors.grey.shade400,
                      fontWeight: FontWeight.w500,
                      fontSize: 14),
                )
              ],
            ),
            Container(
              height: 230,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: Cart.length,
                itemBuilder: (context, index) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        alignment: Alignment.bottomRight,
                        height: 100,
                        width: 150,
                        margin: EdgeInsets.only(right: 15, top: 10, bottom: 5),
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.grey.shade400,
                                  offset: Offset(1, 5),
                                  blurRadius: 5)
                            ],
                            borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(
                                image: AssetImage(Cart[index]),
                                fit: BoxFit.cover)),
                      ),
                      Text(
                        name[index],
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                      Text(
                        price[index],
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            color: Colors.purpleAccent.shade700),
                      ),
                    ],
                  );
                },
              ),
            ),
          ]),
        ]),
      ),
    );
  }
}
