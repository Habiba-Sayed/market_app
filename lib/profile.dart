import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Profile_Screen extends StatefulWidget {
  const Profile_Screen({super.key});

  @override
  State<Profile_Screen> createState() => _Profile_ScreenState();
}

class _Profile_ScreenState extends State<Profile_Screen> {
  List<String> txt = [
    "My Account",
    "My Orders",
    "Language Settings",
    "Shipping Address",
    "My Cards",
    "Settings",
    "Privacy Policy",
    "FAQ"
  ];
  List<Icon> icons = [
    Icon(Icons.account_circle),
    Icon(Icons.shopping_bag_sharp),
    Icon(Icons.language),
    Icon(Icons.location_on_outlined),
    Icon(Icons.credit_card_sharp),
    Icon(Icons.settings),
    Icon(Icons.policy_outlined),
    Icon(Icons.report),
  ];
  List<Icon> icons2 = [
    Icon(Icons.navigate_next_rounded),
    Icon(Icons.navigate_next_rounded),
    Icon(Icons.navigate_next_rounded),
    Icon(Icons.navigate_next_rounded),
    Icon(Icons.navigate_next_rounded),
    Icon(Icons.navigate_next_rounded),
    Icon(Icons.navigate_next_rounded),
    Icon(Icons.navigate_next_rounded),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      body: Padding(
          padding: EdgeInsets.all(10),
          child: ListView(children: [
            Column(
              children: [
                Center(
                    child: CircleAvatar(
                  backgroundImage: AssetImage("assets/cat_profile.jpg"),
                  radius: 55,
                )),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Habiba Sayed",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
                Container(
                  margin: EdgeInsets.only(top: 10),
                  height: 500,
                  child: ListView.builder(
                    itemCount: txt.length,
                    itemBuilder: (context, index) {
                      return Container(
                        margin: EdgeInsets.all(5),
                        height: 50,
                        width: 100,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.grey.shade300,
                                  blurRadius: 1,
                                  spreadRadius: 1,
                                  offset: Offset(1, 4))
                            ]),
                        child: ListTile(
                          leading: icons[index],
                          iconColor: Colors.grey[700],
                          title: Text(
                            txt[index],
                            style: TextStyle(fontWeight: FontWeight.w500),
                          ),
                          trailing: icons2[index],
                        ),
                      );
                    },
                  ),
                )
              ],
            ),
          ])),
    );
  }
}
