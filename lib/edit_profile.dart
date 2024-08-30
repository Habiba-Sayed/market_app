import 'package:flutter/material.dart';

class Edit_Profile extends StatefulWidget {
  const Edit_Profile({super.key});

  @override
  State<Edit_Profile> createState() => _Profile_ScreenState();
}

class _Profile_ScreenState extends State<Edit_Profile> {
  List<String> details = ["Name", "Email", "Phone", "Country"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Edit Profile",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
          ),
          centerTitle: true,
          backgroundColor: Colors.transparent,
          leading: Icon(
            Icons.arrow_back_rounded,
            size: 30,
          ),
        ),
        body: Padding(
            padding: EdgeInsets.all(10),
            child: ListView(children: [
              Column(children: [
                Center(
                  child: Stack(
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage("assets/cat_profile.jpg"),
                        radius: 55,
                      ),
                      Positioned(
                        left: 70,
                        bottom: 0.1,
                        child: CircleAvatar(
                          child: Icon(
                            Icons.camera_alt_outlined,
                            color: Colors.grey[700],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 300,
                  child: ListView.builder(
                    scrollDirection: Axis.vertical,
                    itemCount: details.length,
                    itemBuilder: (context, index) {
                      return Container(
                        padding: EdgeInsets.only(left: 10, right: 10),
                        margin: EdgeInsets.only(top: 20),
                        width: double.infinity,
                        height: 50,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.grey,
                                  spreadRadius: 1,
                                  blurRadius: 5,
                                  offset: Offset(0.5, 2))
                            ]),
                        child: TextField(
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: details[index],
                              hintStyle: TextStyle(color: Colors.grey[500])),
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(
                  height: 20,
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
                      "Save",
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 25,
                          color: Colors.white),
                    ),
                  ),
                ),
              ]),
            ])));
  }
}
