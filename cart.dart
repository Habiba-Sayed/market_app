import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Cart_Screen extends StatefulWidget {
  const Cart_Screen({super.key});

  @override
  State<Cart_Screen> createState() => _CartScreenState();
}

class _CartScreenState extends State<Cart_Screen> {
  List<int> count = [0, 0, 0, 0, 0];
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
        backgroundColor: Colors.transparent,
        leading: Icon(Icons.arrow_back_ios_new),
        title: Text(
          "Your Cart",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: ListView(children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "5 Products",
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: Colors.grey,
                    fontSize: 18),
              ),
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
                          Column(
                            children: [
                              IconButton(
                                  onPressed: () {
                                    setState(() {
                                      count[index]++;
                                    });
                                  },
                                  icon: Icon(Icons.add)),
                              Text("${count[index]}"),
                              IconButton(
                                  onPressed: () {
                                    setState(() {
                                      count[index]--;
                                    });
                                  },
                                  icon: Icon(Icons.minimize_rounded))
                            ],
                          )
                        ],
                      ),
                    );
                  },
                ),
              ),
              // SizedBox(
              //   height: 60,
              // ),
              Container(
                alignment: Alignment.center,
                margin: EdgeInsets.only(top: 20),
                padding: EdgeInsets.all(5),
                height: 90,
                width: double.infinity,
                color: Colors.white,
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 170,
                        // color: Colors.amberAccent,
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Sub Total",
                                  style: TextStyle(
                                      color: Colors.grey.shade500,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 16),
                                ),
                                Text(
                                  "\$1700",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 16),
                                ),
                              ],
                            ),
                            Divider(),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Total",
                                  style: TextStyle(
                                      color: Colors.grey.shade500,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 16),
                                ),
                                Text(
                                  "\$1700",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 16),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Container(
                        alignment: Alignment.center,
                        width: 160,
                        height: 60,
                        child: Text(
                          "Check Out",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                              fontSize: 20),
                        ),
                        decoration: BoxDecoration(
                            color: Colors.purpleAccent.shade400,
                            borderRadius: BorderRadius.circular(10)),
                      )
                    ]),
              )
            ],
          ),
        ]),
      ),
    );
  }
}
