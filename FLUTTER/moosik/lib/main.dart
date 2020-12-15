import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';
//import 'package:audio_service/audio_service.dart';
import 'dart:async';
//import 'dart:io';
import 'dart:math';
//import 'package:audio_service/audio_service.dart';
import 'package:audio_session/audio_session.dart';
import 'package:flutter/foundation.dart';
//import 'package:just_audio/just_audio.dart';
//import 'package:rxdart/rxdart.dart';
import 'package:flutter/services.dart';
import 'Home.dart';

void main() {
  runApp(Moosik());
}

class Moosik extends StatefulWidget {
  @override
  _MoosikState createState() => _MoosikState();
}

class _MoosikState extends State<Moosik> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: new BoxDecoration(
            image: new DecorationImage(
              image: new AssetImage("images/bg.png"),
              fit: BoxFit.cover,
            ),
          ),
          child: SafeArea(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.all(1.0),
                      child:Center(
                        child:Icon(
                            Icons.assignment_ind_rounded,
                            color:Colors.white,
                            size:180,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child:Padding(
                      padding:EdgeInsets.all(1.0),
                      child:Column(
                        children:<Widget>[
                        Slider(
                          min:0.0,
                          max:100.0,
                          value: 10.0,
                          activeColor: Colors.black,
                          inactiveColor: Colors.black87,


                        ),
                       ],
                      ),
                    ),
                  ),
                  Expanded(
                    child:Padding(
                      padding:EdgeInsets.all(1.0),
                      child:Center(
                        child:Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children:<Widget>[
                            FlatButton(
                              onPressed: null,
                              child: Icon(
                                Icons.shuffle_sharp,
                                color:Colors.black87,
                                size: 40,
                              ),
                            ),

                            FlatButton(
                              onPressed: null,
                              child: Icon(
                                Icons.skip_previous_sharp,
                                color:Colors.black87,
                                size: 40,
                              ),
                            ),
                            FlatButton(
                              onPressed: null,
                              child: Icon(
                                Icons.play_arrow,
                                color:Colors.black87,
                                size: 40,
                              ),
                            ),
                            FlatButton(
                              onPressed: null,
                              child: Icon(
                                Icons.skip_next_sharp,
                                color:Colors.black87,
                                size: 40,
                              ),
                            ),
                            FlatButton(
                              onPressed: null,
                              child:
                                // To Do: Do make function to change icons
                                Icon(
                                Icons.repeat,
                                color:Colors.black87,
                                size: 40,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
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
