import 'package:flutter/material.dart';

import 'home.dart';

class NavBar extends StatelessWidget {
  //const NavBar({ Key? key }) : super(key: key);
  List navRoutes = [
    {"pagename": "Home", "icon": Icon(Icons.home_filled), "to": HomeScreen()},
    {"pagename": "Shop", "icon": Icon(Icons.shopping_bag), "to": HomeScreen()},
    {
      "pagename": "Period Calculator",
      "icon": Icon(Icons.calendar_today),
      "to": HomeScreen()
    },
    {
      "pagename": "Telemedcine",
      "icon": Icon(Icons.medical_services),
      "to": HomeScreen()
    },
    {
      "pagename": "Safety Mode",
      "icon": Icon(Icons.favorite),
      "to": HomeScreen()
    },
    {
      "pagename": "Discussion Forum",
      "icon": Icon(Icons.chat),
      "to": HomeScreen()
    },
    {
      "pagename": "Health tips and News",
      "icon": Icon(Icons.pageview),
      "to": HomeScreen()
    },
    {
      "pagename": "Talks and Events",
      "icon": Icon(Icons.event),
      "to": HomeScreen()
    },
    {
      "pagename": "Notification",
      "icon": Icon(Icons.notifications),
      "to": HomeScreen()
    },
    {"pagename": "My Profile", "icon": Icon(Icons.person), "to": HomeScreen()},
    {"pagename": "About Us", "icon": Icon(Icons.star), "to": HomeScreen()},
    {"pagename": "Settings", "icon": Icon(Icons.settings), "to": HomeScreen()},
    {"pagename": "Help", "icon": Icon(Icons.help), "to": HomeScreen()},
    {"pagename": "Logout", "icon": Icon(Icons.logout), "to": HomeScreen()},
  ];

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            child: Row(children: [
              ClipOval(
                child: Image.network(
                  'https://images.unsplash.com/photo-1524504388940-b1c1722653e1?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=334&q=80',
                  fit: BoxFit.cover,
                  width: 90,
                  height: 90,
                ),
              ),
              Expanded(
                  child: Container(
                      margin: EdgeInsets.only(left: 10),
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Angela Fernandus",
                                style: TextStyle(fontSize: 22),
                                textAlign: TextAlign.left),
                            Text("angela_13", textAlign: TextAlign.left)
                          ]))),
            ]),
          ),
          SizedBox(
              height: 700,
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: navRoutes.length,
                itemBuilder: (context, index) => Column(children: [
                  ListTile(
                      title: Text("${navRoutes[index]['pagename']}"),
                      leading: navRoutes[index]["icon"],
                      onTap: () {
                        print("${navRoutes[index]['to']}()");
                        //Get.to(HomeScreen());
                      }),
                  Divider()
                ]),
              ))
        ],
      ),
    );
  }
}
