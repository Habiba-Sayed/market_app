import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class details_screen extends StatefulWidget {
  String name;
  int price;
  String image;
  details_screen(
      {super.key,
      required this.image,
      required this.name,
      required this.price});

  @override
  State<details_screen> createState() => _details_screenState();
}

class _details_screenState extends State<details_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Details"),
          centerTitle: true,
        ),
        body: Container(
            child: Column(
          children: [
            // Hero(tag: tag, child: child)
            Image.asset(widget.image),
            Text(widget.name),
            Text(widget.price.toString())
          ],
        )));
  }
}
