import 'package:flutter/material.dart';
import 'package:minorproj/details.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.grey[850],
            centerTitle: true,
            title: Text(
              'Account',
              style: TextStyle(
                  color: Colors.amberAccent,
                  fontFamily: 'medium',
                  fontSize: 30),
            ),
          ),
          backgroundColor: Colors.grey[850],
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(30.0),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(
                      height: 50,
                    ),
                    Center(
                      child: CircleAvatar(
                        radius: 90.0,
                        backgroundImage: NetworkImage(
                            'https://image.flaticon.com/icons/png/512/1414/1414300.png'),
                        // backgroundImage: AssetImage('assets/hatake.png'),
                        // backgroundColor: Colors.grey[850],
                      ),
                    ),
                    SizedBox(height: 40),
                    Text(
                      'NAME',
                      style: TextStyle(
                          fontFamily: 'header',
                          fontSize: 18.0,
                          color: Colors.grey[400],
                          letterSpacing: 2.0),
                    ),
                    SizedBox(height: 2.0),
                    TextField(
                      decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(7.0)),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(7.0)),
                          labelText: 'Name',
                          hintText: 'Enter Name',
                          labelStyle: TextStyle(color: Colors.grey[400])),
                    ),
                    SizedBox(height: 30.0),
                    Text(
                      'Email ID',
                      style: TextStyle(
                          fontFamily: 'header',
                          fontSize: 18.0,
                          color: Colors.grey[400],
                          letterSpacing: 2.0),
                    ),
                    SizedBox(height: 2.0),
                    TextField(
                      decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(7.0)),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(7.0)),
                          labelText: 'Email',
                          hintText: 'Enter email',
                          labelStyle: TextStyle(color: Colors.grey[400])),
                    ),
                    SizedBox(height: 30.0),
                    ElevatedButton(
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return Address();
                          }));
                        },
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(Colors.amber[300]),
                            fixedSize:
                                MaterialStateProperty.all(Size.fromWidth(200)),
                            shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(18.0),
                                    side: BorderSide(
                                        color: Colors.grey.shade400)))),
                        child: Text('Add Address',
                            style: TextStyle(
                                color: Colors.grey[850],
                                fontFamily: 'header'))),
                  ]),
            ),
          )),
    );
  }
}
