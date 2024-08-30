import 'package:flutter/material.dart';

class CheckOut_Screen extends StatefulWidget {
  const CheckOut_Screen({super.key});

  @override
  State<CheckOut_Screen> createState() => _CheckOut_ScreenState();
}

class _CheckOut_ScreenState extends State<CheckOut_Screen> {
  List<String> Cart = [
    "assets/iphone.jpg",
    "assets/macbook.jpg",
    "assets/laptop.jpg",
    "assets/mobile.jpg",
    "assets/laptop1.jpg"
  ];
  List<String> pay = [
    "assets/visa.png",
    "assets/paypal.png",
    "assets/Gpay.png",
    "assets/apple pay.png"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text(
          "Check Out",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        leading: Icon(Icons.arrow_back_ios_new),
        toolbarHeight: 25,
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 15, right: 15, top: 5),
        child: ListView(children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Your Address",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  Text(
                    "Change Address",
                    style: TextStyle(
                        color: Colors.grey.shade400,
                        fontWeight: FontWeight.w500,
                        fontSize: 14),
                  )
                ],
              ),
              Container(
                padding:
                    EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
                // alignment: Alignment.center,
                margin: EdgeInsets.only(top: 15),
                width: double.infinity,
                height: 80,
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.shade400,
                          offset: Offset(1, 4),
                          blurRadius: 10)
                    ],
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      "Habiba Sayed",
                      style: TextStyle(
                          color: Colors.grey.shade500,
                          fontWeight: FontWeight.w500),
                    ),
                    Text(
                      "ElShrouk City",
                      style: TextStyle(
                          color: Colors.grey.shade500,
                          fontWeight: FontWeight.w500),
                    ),
                    Text(
                      "Egypt, Cairo",
                      style: TextStyle(
                          color: Colors.grey.shade500,
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Shipping Mode",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  Text(
                    "Change Mode",
                    style: TextStyle(
                        color: Colors.grey.shade400,
                        fontWeight: FontWeight.w500,
                        fontSize: 14),
                  )
                ],
              ),
              Container(
                padding:
                    EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
                // alignment: Alignment.center,
                margin: EdgeInsets.only(top: 15),
                width: double.infinity,
                height: 50,
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.shade400,
                          offset: Offset(1, 4),
                          blurRadius: 10)
                    ],
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20)),

                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Flat Rate",
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: Colors.grey.shade500),
                    ),
                    Text(
                      "\$120",
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: Colors.grey.shade500),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Your Cart",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  Text(
                    "View All",
                    style: TextStyle(
                        color: Colors.grey.shade400,
                        fontWeight: FontWeight.w500,
                        fontSize: 14),
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 120,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: EdgeInsets.all(5),
                      width: 150,
                      height: 100,
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
                    );
                  },
                  itemCount: Cart.length,
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                "Payment Method",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 50,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: EdgeInsets.all(5),
                      width: 120,
                      height: 100,
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey.shade400,
                                offset: Offset(-4, 5),
                                blurRadius: 5)
                          ],
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                              image: AssetImage(pay[index]),
                              fit: BoxFit.cover)),
                    );
                  },
                  itemCount: pay.length,
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                "Order Summary",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              Container(
                margin: EdgeInsets.only(top: 10),
                padding: EdgeInsets.all(12),
                height: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(color: Colors.grey.shade500)),
                child: Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Coupon",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                    SizedBox(
                      width: 130,
                    ),
                    Text(
                      "Add Coupon Code",
                      style: TextStyle(
                          color: Colors.grey.shade400,
                          fontWeight: FontWeight.w500,
                          fontSize: 14),
                    ),
                    Icon(
                      Icons.navigate_next_outlined,
                      color: Colors.grey.shade400,
                    )
                  ],
                ),
              ),
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
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Total",
                          style: TextStyle(
                              color: Colors.grey.shade400,
                              fontWeight: FontWeight.w600,
                              fontSize: 16),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "\$1700",
                          style: TextStyle(
                              fontWeight: FontWeight.w600, fontSize: 20),
                        ),
                      ],
                    ),
                    Container(
                      alignment: Alignment.center,
                      width: 150,
                      height: 50,
                      child: Text(
                        "Pay Now",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            fontSize: 18),
                      ),
                      decoration: BoxDecoration(
                          color: Colors.purpleAccent.shade400,
                          borderRadius: BorderRadius.circular(10)),
                    )
                  ],
                ),
              )
            ],
          )
        ]),
      ),
    );
  }
}
