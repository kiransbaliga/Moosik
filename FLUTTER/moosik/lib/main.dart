import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
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
            canvasColor: Colors.black45,
          ),
          initialRoute: "SongScreen",
          routes: {
            "SongScreen": (context) => SongScreen(),
          },
        );
      });
    });
  }
}
