import 'package:flutter/material.dart';
import 'package:namaste/widgets/text_field.dart';

class MyProfile extends StatefulWidget {
  @override
  _MyProfileState createState() => _MyProfileState();
}

class _MyProfileState extends State<MyProfile> {
  TextEditingController unameController =
      new TextEditingController(text: 'Jacob Thomas');
  TextEditingController emailController =
      new TextEditingController(text: 'jacob76@gmail.com');
  TextEditingController phoneController =
      new TextEditingController(text: '9988776654');
  TextEditingController locationController =
      new TextEditingController(text: '3102  Oakwood Circle');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Account Settings"),
        backgroundColor: Color(0xff82D382),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(30),
          ),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            Container(
                width: 180,
                height: 180,
                child: Stack(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 25),
                      width: 180,
                      height: 180,
                      child: CircleAvatar(
                        backgroundImage: AssetImage('assets/images/avatar.png'),
                      ),
                    ),
                    Positioned(
                      child: CircleAvatar(
                        backgroundColor: Colors.black,
                        radius: 18,
                        child: CircleAvatar(
                          backgroundColor: Colors.white,
                          radius: 16,
                          child: Icon(
                            Icons.edit,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      bottom: 10,
                      right: 10,
                    ),
                  ],
                )),
            LabeledTextField(
              label: "Username",
              controller: unameController,
            ),
            Text(
              "Personal Details",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            LabeledTextField(
              label: "Email",
              controller: emailController,
            ),
            LabeledTextField(
              label: "Phone",
              controller: phoneController,
            ),
            LabeledTextField(
              label: "Location",
              controller: locationController,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextButton(
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.redAccent),
                  ),
                  onPressed: () {},
                  child: Text(
                    "Cancel",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
                SizedBox(
                  width: 50,
                ),
                TextButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Color(0xff81c784)),
                  ),
                  child: Text(
                    "Submit",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
