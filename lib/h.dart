import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:market_app/d.dart';

class home_screen extends StatefulWidget {
  const home_screen({super.key});

  @override
  State<home_screen> createState() => _home_screenState();
}

class _home_screenState extends State<home_screen> {
  List<String> image = [
    "assets/laptop1.jpg",
    "assets/mobile.jpg",
    "assets/makeup1.jpg",
  ];
  List<String> name = ["Computers", "Mobiles", "Makeup"];
  List<int> price = [
    1700,
    3700,
    500,
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("home"),
        centerTitle: true,
      ),

      body: ListView.builder(
        itemCount: name.length,
        itemBuilder: (context, index) {
          return Hero(
            tag: name,
            child: ListTile(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => details_screen(
                        name: name[index],
                        image: image[index],
                        price: price[index],
                      ),
                    ));
              },
              leading: CircleAvatar(
                backgroundImage: AssetImage(image[index]),
              ),
              title: Text(name[index]),
            ),
          );
        },
      ),
      // body: Center(
      //   child: Column(
      //     mainAxisAlignment: MainAxisAlignment.center,
      //     children: [
      //       ElevatedButton(
      //           onPressed: () {
      // Navigator.push(
      //     context,
      //     MaterialPageRoute(
      //       builder: (context) => details_screen(
      //         name:,
      //         image:,
      //         price:,
      //       ),
      //     ));
      //           },
      //           child: Text("Details"))
      //     ],
      //   ),

      // ),
    );
  }
}
