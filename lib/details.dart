import 'package:flutter/material.dart';

class Address extends StatefulWidget {
  @override
  _AddressState createState() => _AddressState();
}

class _AddressState extends State<Address> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.grey[850],
          centerTitle: true,
          title: Text(
            'Add Details',
            style: TextStyle(
                color: Colors.grey[400], fontFamily: 'medium', fontSize: 30),
          ),
        ),
        backgroundColor: Colors.amber[300],
        body: SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height - 180,
            decoration: BoxDecoration(
                color: Colors.grey[850],
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(70),
                    bottomRight: Radius.circular(70))),
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'ADD ADDRESS',
                    style: TextStyle(
                        fontFamily: 'header',
                        fontSize: 24.0,
                        color: Colors.amberAccent,
                        letterSpacing: 2.0),
                  ),
                  Divider(
                    height: 50,
                  ),
                  TextField(
                    decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(7.0)),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(7.0)),
                        labelText: 'Name',
                        hintText: 'Enter Name',
                        labelStyle: TextStyle(color: Colors.grey[300])),
                  ),
                  Divider(
                    height: 20,
                  ),
                  TextField(
                    decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(7.0)),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(7.0)),
                        labelText: 'House Number',
                        hintText: 'Add House Number',
                        labelStyle: TextStyle(color: Colors.grey[300])),
                  ),
                  Divider(
                    height: 20,
                  ),
                  TextField(
                    decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(7.0)),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(7.0)),
                        labelText: 'Landmark',
                        hintText: 'Add a Landmark',
                        labelStyle: TextStyle(color: Colors.grey[300])),
                  ),
                  Divider(
                    height: 20,
                  ),
                  TextField(
                    decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(7.0)),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(7.0)),
                        labelText: 'City',
                        hintText: 'Enter city name',
                        labelStyle: TextStyle(color: Colors.grey[300])),
                  ),
                  Divider(
                    height: 20,
                  ),
                  TextField(
                    decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(7.0)),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(7.0)),
                        labelText: 'Pin Code',
                        hintText: 'Add Pin Code',
                        labelStyle: TextStyle(color: Colors.grey[300])),
                  ),
                  Divider(
                    height: 20,
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      'Confirm Address',
                      style: TextStyle(
                          color: Colors.grey[850],
                          fontSize: 15,
                          fontFamily: 'header'),
                    ),
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.amber[300]),
                        fixedSize:
                            MaterialStateProperty.all(Size.fromWidth(200)),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(18.0),
                                    side: BorderSide(
                                        color: Colors.grey.shade400)))),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
