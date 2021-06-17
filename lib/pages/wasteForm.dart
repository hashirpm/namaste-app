import 'package:flutter/material.dart';
import 'package:namaste/navbar.dart';
import 'package:namaste/pages/scheduleConfirm.dart';

class WasteForm extends StatefulWidget {
  const WasteForm({Key? key}) : super(key: key);

  @override
  _WasteFormState createState() => _WasteFormState();
}

class _WasteFormState extends State<WasteForm> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: Builder(builder: (BuildContext context) {
            return IconButton(
                icon: const Icon(Icons.menu, color: Colors.grey),
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                });
          }),
          elevation: 0,
          backgroundColor: Colors.transparent,
        ),
        drawer: NavBar(),
        body: Center(
            child: Container(
                padding: EdgeInsets.all(10),
                child: Column(
                  children: [
                    Text("SCHEDULE YOUR PICK UP",
                        style: TextStyle(
                            color: Colors.green[900],
                            fontSize: 24,
                            fontWeight: FontWeight.w700),
                        textAlign: TextAlign.left),
                    SizedBox(height: 20),
                    Text("Fill in your details in the form below",
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.w400)),
                    SizedBox(height: 50),
                    TextFormField(
                        decoration: InputDecoration(
                      border: UnderlineInputBorder(),
                      labelText: 'Your name',
                    )),
                    SizedBox(height: 30),
                    Container(
                      width: MediaQuery.of(context).size.width / 1.1,
                      child: DropdownButton<String>(
                        isExpanded: true,
                        items: [
                          DropdownMenuItem<String>(
                            child: Text('Idukki'),
                            value: 'one',
                          ),
                          DropdownMenuItem<String>(
                            child: Text('Palakkad'),
                            value: 'two',
                          ),
                          DropdownMenuItem<String>(
                            child: Text('Pathanamthitta'),
                            value: 'three',
                          ),
                          DropdownMenuItem<String>(
                            child: Text('Malappuram'),
                            value: 'four',
                          ),
                        ],
                        hint: Text('Select Location'),
                      ),
                    ),
                    SizedBox(height: 30),
                    Container(
                      width: MediaQuery.of(context).size.width / 1.1,
                      child: DropdownButton<String>(
                        isExpanded: true,
                        items: [
                          DropdownMenuItem<String>(
                            child: Text('9-10'),
                            value: 'one',
                          ),
                          DropdownMenuItem<String>(
                            child: Text('12-2'),
                            value: 'two',
                          ),
                          DropdownMenuItem<String>(
                            child: Text('14-16'),
                            value: 'three',
                          ),
                        ],
                        hint: Text('Choose your pick up schedule'),
                      ),
                    ),
                    SizedBox(height: 30),
                    Container(
                      width: MediaQuery.of(context).size.width / 1.1,
                      child: DropdownButton<String>(
                        isExpanded: true,
                        items: [
                          DropdownMenuItem<String>(
                            child: Text('Plastic waste'),
                            value: 'one',
                          ),
                          DropdownMenuItem<String>(
                            child: Text('Bio-waste'),
                            value: 'two',
                          ),
                          DropdownMenuItem<String>(
                            child: Text('Electronic waste'),
                            value: 'three',
                          ),
                          DropdownMenuItem<String>(
                            child: Text('Agricultural waste'),
                            value: 'four',
                          ),
                        ],
                        hint: Text('Category of waste'),
                      ),
                    ),
                    SizedBox(height: 40),
                    Container(
                        alignment: Alignment(0, 0),
                        width: 300,
                        height: 50,
                        decoration: BoxDecoration(
                          color: Colors.green[300],
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: InkWell(
                            onTap: () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        ScheduleConfirmation())),
                            child: Text(
                              "SUBMIT",
                              style: TextStyle(color: Colors.green[900]),
                            ))),
                    SizedBox(height: 40),
                    Container(
                        padding: EdgeInsets.all(10),
                        alignment: Alignment(0, 0),
                        color: Colors.green[100],
                        child: Text(
                            "You can also drop it off at your nearest disposal centre ---->"))
                  ],
                ))));
  }
}
