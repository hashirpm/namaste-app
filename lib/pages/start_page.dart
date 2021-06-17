import 'package:flutter/material.dart';
import 'package:namaste/widgets/card.dart';

import '../navbar.dart';

class StartPage extends StatefulWidget {
  @override
  _StartPageState createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text("namaste"),
          backgroundColor: Color(0xff82D382),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(30),
            ),
          ),
        ),
        drawer: NavBar(),
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.all(10),
                  width: MediaQuery.of(context).size.width * 0.9,
                  height: 70,
                  child: TextField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.search,
                        color: Colors.black54,
                      ),
                      contentPadding:
                          EdgeInsets.only(top: 2, bottom: 2, left: 30),
                      filled: true,
                      fillColor: Colors.white,
                      hintText: "Search",
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                        borderRadius: BorderRadius.all(
                          const Radius.circular(30.0),
                        ),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: const BorderRadius.all(
                          const Radius.circular(30.0),
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  child: GridView.count(
                    childAspectRatio: 0.83,
                    shrinkWrap: true,
                    primary: false,
                    crossAxisCount: 2,
                    mainAxisSpacing: 14,
                    crossAxisSpacing: 8,
                    children: <Widget>[
                      ContentCard(
                          titleText: "Trash Collection",
                          cardImage: "assets/images/trash-can.png"),
                      ContentCard(
                          titleText: "Sell",
                          cardImage: "assets/images/trade.png"),
                      ContentCard(
                          titleText: "Buy",
                          cardImage: "assets/images/shopping-bag.png"),
                      ContentCard(
                          titleText: "Buy Us A Tree",
                          cardImage: "assets/images/save-plants.png"),
                      ContentCard(
                          titleText: "Volunteer",
                          cardImage: "assets/images/charity.png"),
                      ContentCard(
                          titleText: "Future Initiatives",
                          cardImage: "assets/images/creative.png"),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
