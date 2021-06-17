import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'home.dart';
import 'package:firebase_auth/firebase_auth.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

final _auth = FirebaseAuth.instance;

class _LoginScreenState extends State<LoginScreen> {
  String email = "";
  String password = "";
  bool _checkbox = false;
  bool _obscureLogin = true;
  bool _obscureSignup = true;
  bool _obscureConfirm = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: Column(
      children: [
        Container(
          alignment: Alignment.center,
          height: MediaQuery.of(context).size.height / 3.5,
          width: MediaQuery.of(context).size.width,
          child: Image(
              image: AssetImage("assets/images/logoNamaste.png"), width: 150),
          decoration: BoxDecoration(
              color: Colors.green[100],
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30),
              )),
        ),
        DefaultTabController(
            length: 2, // length of tabs
            initialIndex: 0,
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Container(
                    child: TabBar(
                      labelColor: Colors.green,
                      unselectedLabelColor: Colors.black,
                      tabs: [
                        Tab(text: 'Login'),
                        Tab(text: 'Signup'),
                      ],
                    ),
                  ),
                  Container(
                      height: MediaQuery.of(context).size.height *
                          5 /
                          7, //height of TabBarView
                      decoration: BoxDecoration(
                          border: Border(
                              top: BorderSide(color: Colors.grey, width: 0.5))),
                      child: TabBarView(children: <Widget>[
                        //Login tab code
                        Container(
                            child: Center(
                          child: Column(
                            children: [
                              Container(
                                  margin: EdgeInsets.only(top: 50),
                                  padding: EdgeInsets.only(left: 25, right: 25),
                                  child: TextFormField(
                                      decoration: InputDecoration(
                                          labelText: 'Enter your phone number',
                                          labelStyle:
                                              TextStyle(fontSize: 14)))),
                              Container(
                                  padding: EdgeInsets.only(left: 25, right: 25),
                                  margin: EdgeInsets.only(top: 50),
                                  child: TextFormField(
                                    decoration: InputDecoration(
                                      labelText: 'Enter your password',
                                      labelStyle: TextStyle(fontSize: 14),
                                      suffixIcon: _obscureLogin
                                          ? IconButton(
                                              icon: Icon(Icons.visibility_off),
                                              onPressed: () {
                                                setState(() {
                                                  _obscureLogin = false;
                                                });
                                              })
                                          : IconButton(
                                              icon: Icon(Icons.visibility),
                                              onPressed: () {
                                                setState(() {
                                                  _obscureLogin = true;
                                                });
                                              }),
                                    ),
                                    obscureText: _obscureLogin,
                                  )),
                              SizedBox(height: 100),
                              InkWell(
                                  onTap: () async {
                                    Navigator.pushNamed(
                                      context,
                                      "/home",
                                    );
                                    // try {
                                    //   final user = await _auth.signInWithEmailAndPassword(
                                    //       email: email, password: password);
                                    //   if (user != null) {
                                    //     Navigator.push(
                                    //       context,
                                    //       MaterialPageRoute(
                                    //           builder: (context) => HomeScreen()),
                                    //     );
                                    //   }
                                    // } catch (e) {
                                    //   print(e);
                                    // }
                                  },
                                  child: Container(
                                      width: 270,
                                      height: 50,
                                      child: Align(
                                          alignment: Alignment(0, 0),
                                          child: Text("Login")),
                                      decoration: BoxDecoration(
                                          color: Colors.green[100],
                                          borderRadius:
                                              BorderRadius.circular(20))))
                            ],
                          ),
                        )),

                        //Signup tab code
                        SingleChildScrollView(
                          child: Center(
                            child: Column(
                              children: [
                                Container(
                                    margin: EdgeInsets.only(top: 30),
                                    padding:
                                        EdgeInsets.only(left: 25, right: 25),
                                    child: TextFormField(
                                        decoration: InputDecoration(
                                            labelText: 'Enter your name',
                                            labelStyle:
                                                TextStyle(fontSize: 14)))),
                                Container(
                                    margin: EdgeInsets.only(top: 20),
                                    padding:
                                        EdgeInsets.only(left: 25, right: 25),
                                    child: TextFormField(
                                        decoration: InputDecoration(
                                            labelText: 'Enter your location',
                                            labelStyle:
                                                TextStyle(fontSize: 14)))),
                                Container(
                                    margin: EdgeInsets.only(top: 20),
                                    padding:
                                        EdgeInsets.only(left: 25, right: 25),
                                    child: TextFormField(
                                        decoration: InputDecoration(
                                            labelText:
                                                'Enter your phone number',
                                            labelStyle:
                                                TextStyle(fontSize: 14)))),
                                Container(
                                    padding:
                                        EdgeInsets.only(left: 25, right: 25),
                                    margin: EdgeInsets.only(top: 20),
                                    child: TextFormField(
                                      decoration: InputDecoration(
                                        labelText: 'Enter new password',
                                        labelStyle: TextStyle(fontSize: 14),
                                        suffixIcon: _obscureSignup
                                            ? IconButton(
                                                icon:
                                                    Icon(Icons.visibility_off),
                                                onPressed: () {
                                                  setState(() {
                                                    _obscureSignup = false;
                                                  });
                                                })
                                            : IconButton(
                                                icon: Icon(Icons.visibility),
                                                onPressed: () {
                                                  setState(() {
                                                    _obscureSignup = true;
                                                  });
                                                }),
                                      ),
                                      obscureText: _obscureSignup,
                                    )),
                                Container(
                                    padding:
                                        EdgeInsets.only(left: 25, right: 25),
                                    margin: EdgeInsets.only(top: 20),
                                    child: TextFormField(
                                      decoration: InputDecoration(
                                        labelText: 'Confirm new password',
                                        labelStyle: TextStyle(fontSize: 14),
                                        suffixIcon: _obscureConfirm
                                            ? IconButton(
                                                icon:
                                                    Icon(Icons.visibility_off),
                                                onPressed: () {
                                                  setState(() {
                                                    _obscureConfirm = false;
                                                  });
                                                })
                                            : IconButton(
                                                icon: Icon(Icons.visibility),
                                                onPressed: () {
                                                  setState(() {
                                                    _obscureConfirm = true;
                                                  });
                                                }),
                                      ),
                                      obscureText: _obscureConfirm,
                                    )),
                                SizedBox(height: 40),
                                InkWell(
                                    onTap: () async {
                                      try {
                                        final newUser = await _auth
                                            .createUserWithEmailAndPassword(
                                                email: email,
                                                password: password);
                                        if (newUser != null) {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    HomeScreen()),
                                          );
                                        }
                                      } catch (e) {
                                        print(e);
                                      }
                                    },
                                    child: Container(
                                        width: 270,
                                        height: 50,
                                        child: Align(
                                            alignment: Alignment(0, 0),
                                            child: Text("Get Started")),
                                        decoration: BoxDecoration(
                                            color: Colors.green[100],
                                            borderRadius:
                                                BorderRadius.circular(20))))
                              ],
                            ),
                          ),
                        ),
                      ]))
                ])),
      ],
    )));
  }
}
