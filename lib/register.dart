//@dart=2.9
import 'package:flutter/material.dart';
import 'package:minorproj/main.dart';

// import 'firstpage.dart';

class Register extends StatefulWidget {
  // const LogInPage({ Key? key }) : super(key: key);

  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber[300],
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              SizedBox(
                height: 100,
              ),
              Container(
                height: MediaQuery.of(context).size.height - 100,
                decoration: BoxDecoration(
                    color: Colors.grey[850],
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(70.0),
                        topRight: Radius.circular(70))),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 70,
                          height: 70,
                          margin: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                              shape: BoxShape.circle, color: Colors.amber[300]),
                        ),
                        Container(
                          // width: 70,
                          // height: 70,
                          margin: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                              shape: BoxShape.circle, color: Colors.amber[300]),
                          child: Padding(
                            padding: const EdgeInsets.all(0.5),
                            child: Text(
                              'Go',
                              style: TextStyle(
                                  fontSize: 70,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey[850]),
                            ),
                          ),
                        ),
                        Container(
                          width: 70,
                          height: 70,
                          margin: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                              shape: BoxShape.circle, color: Colors.amber[300]),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 150,
                      child: Padding(
                        padding: const EdgeInsets.all(50.0),
                        child: Text(
                          'create an account',
                          style: TextStyle(
                              fontSize: 30,
                              fontFamily: 'header',
                              color: Colors.grey[300]),
                        ),
                      ),
                    ),
                    Container(
                      height: 400,
                      width: 400,
                      decoration: BoxDecoration(
                          color: Colors.grey[600],
                          borderRadius: BorderRadius.all(Radius.circular(70))),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 50,
                          ),
                          SizedBox(
                            width: 300,
                            child: TextField(
                              decoration: InputDecoration(
                                  enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(7.0)),
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(7.0)),
                                  prefixIcon: Icon(
                                    Icons.mail_outline,
                                    color: Colors.grey[850],
                                  ),
                                  hintText: 'enter email account'),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          SizedBox(
                            width: 300,
                            child: TextField(
                              decoration: InputDecoration(
                                  enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(7.0)),
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(7.0)),
                                  prefixIcon: Icon(
                                    Icons.password_outlined,
                                    color: Colors.grey[850],
                                  ),
                                  hintText: 'create password'),
                            ),
                          ),
                          SizedBox(
                            height: 40,
                          ),
                          ElevatedButton(
                            onPressed: () {
                              Navigator.of(context).pushReplacement(
                                  MaterialPageRoute(
                                      builder: (BuildContext context) =>
                                          Homepage()));
                            },
                            child: Text(
                              'create accoumt',
                              style: TextStyle(
                                  color: Colors.grey[850],
                                  fontFamily: 'header'),
                            ),
                            style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all(
                                    Colors.amber[300]),
                                fixedSize: MaterialStateProperty.all(
                                    Size.fromWidth(200)),
                                shape: MaterialStateProperty.all<
                                        RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(18.0),
                                        side: BorderSide(
                                            color: Colors.grey.shade400)))),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
