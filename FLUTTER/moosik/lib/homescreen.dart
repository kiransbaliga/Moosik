import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  HomeScreenState createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: true,
      backgroundColor: Color(0xff1c1c1c),
      body: SafeArea(
        child: Container(
          color: Color(0xff1c1c1c),
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: <Widget>[
              Container(
                height: MediaQuery.of(context).size.height / 2.5,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  image:new DecorationImage(
                    fit: BoxFit.cover,
                    image: new AssetImage("images/1.jpg"),),                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(180.0),
                  ),
                  boxShadow: [
                    new BoxShadow(
                      color: Color(0xff1c1c1c),
                      offset: Offset(15.0, 15.0),
                      blurRadius: 10.0,
                    ),
                    new BoxShadow(
                      color: Color(0xff404040),
                      offset: Offset(-15.0, -15.0),
                      blurRadius: 10.0,
                    ),
                  ],
                ),
                
              ),
              Container(
                height: MediaQuery.of(context).size.height * 3 / 5,
                width: MediaQuery.of(context).size.width,
                color: Colors.pink,
                child: Container(
                  height: MediaQuery.of(context).size.height / 2.5,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Color(0xff1c1c1c),
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(200.0),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
