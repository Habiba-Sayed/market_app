import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Wishlist_Screen extends StatefulWidget {
  const Wishlist_Screen({super.key});

  @override
  State<Wishlist_Screen> createState() => _Wishlist_ScreenState();
}

class _Wishlist_ScreenState extends State<Wishlist_Screen> {
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
        title: Text(
          "WishList",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
      ),
      body: Padding(
        padding: EdgeInsets.only(top: 5, left: 15, right: 15),
        child: Column(
          children: [
            Container(
                height: 50,
                width: double.infinity,
                padding: EdgeInsets.only(left: 10, right: 10),
                margin: EdgeInsets.only(top: 10, bottom: 20),
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
                      hintText: "Search Here ...",
                      hintStyle: TextStyle(
                        color: Colors.grey[500],
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                      border: InputBorder.none),
                )),
            Container(
              // color: Colors.amber,
              height: 600,
              child: ListView.builder(
                itemCount: Cart.length,
                itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey.shade400,
                              offset: Offset(-2, 3),
                              blurRadius: 5)
                        ],
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20)),
                    child: Row(
                      children: [
                        Container(
                          height: 130,
                          width: 120,
                          // colors: Colors.amber,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage(Cart[index]))),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              name[index],
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey.shade500),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              price[index],
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.purpleAccent.shade700),
                            )
                          ],
                        ),
                        SizedBox(
                          width: 80,
                        ),
                        IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.add_shopping_cart_outlined,
                              color: Colors.purpleAccent.shade700,
                            ))
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
