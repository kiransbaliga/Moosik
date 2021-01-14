import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:moosik/homescreen.dart';
import 'SongScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays([]);
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return LayoutBuilder(builder: (context, constraints) {
      return OrientationBuilder(builder: (context, orientation) {
       
        return MaterialApp(
          title: 'Moosik',
          theme: ThemeData.dark().copyWith(
            canvasColor: Color(0xee1c1c1c),
            accentColor: Color(0xee1c1c1c),
            primaryColor: Color(0xff1c1c1c),
          ),
          initialRoute: "HomeScreen",
          routes: {
            "SongScreen": (context) => SongScreen(),
            "HomeScreen":(context)=> HomeScreen(),
          },
        );
      });
    });
  }
}
