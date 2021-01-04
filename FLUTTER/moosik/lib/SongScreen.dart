import 'package:flutter/material.dart';
import 'package:flutter_xlider/flutter_xlider.dart';

class SongScreen extends StatefulWidget {
  @override
  _SongScreenState createState() => _SongScreenState();
}

class _SongScreenState extends State<SongScreen> {
  double _lowervalue = 100.0;
  double _uppervalue;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      backgroundColor: Colors.black45,
      body: SafeArea(
        child: Container(
          color: Color(0xee1c1c1c),
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 20.0,
                  horizontal: 15.0,
                ),
                child: Row(
                  children: <Widget>[
                    _neuButton(Icons.arrow_back),
                    Spacer(),
                    Text(
                      "PLAYING NOW",
                      style: TextStyle(
                        color: Colors.white38,
                        letterSpacing: 0.25,
                        fontSize: MediaQuery.of(context).size.width * 0.02,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Spacer(),
                    _neuButton(Icons.menu),
                  ],
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical:0.0,
                    horizontal: 70.0,
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0xff212121),
                      boxShadow: [
                        new BoxShadow(
                          color: Color(0xff1c1c1c),
                          offset: Offset(15.0, 15.0),
                          blurRadius: 22.0,
                        ),
                        new BoxShadow(
                          color: Color(0xff404040),
                          offset: Offset(-15.0, -15.0),
                          blurRadius: 22.0,
                        ),
                      ],
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: new DecorationImage(
                          fit: BoxFit.cover,
                          image: new AssetImage("images/1.jpg"),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.001,
              ),
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "Into the Woods",
                      style: TextStyle(
                        fontSize: MediaQuery.of(context).size.height * 0.03,
                        color: Colors.white70,
                        letterSpacing: 0.5,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    WidgetSpan(
                      child: Container(
                        margin: EdgeInsets.only(
                          bottom: MediaQuery.of(context).size.width * 0.05,
                        ),
                        child: Icon(
                          Icons.explicit,
                          color: Colors.white54,
                          size: 0.027 * MediaQuery.of(context).size.height,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 1.0,
              ),
              Text(
                "Emily blunt & James Cordan",
                style: TextStyle(
                  fontSize: MediaQuery.of(context).size.height * 0.015,
                  color: Colors.white54,
                  letterSpacing: 0.5,
                  fontWeight: FontWeight.w300,
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 0.0,
                  horizontal: 20.0,
                ),
                child: Row(
                  children: <Widget>[
                    Text(
                      (_lowervalue / 60).toStringAsFixed(0) +
                          ":" +
                          (_lowervalue % 60).toStringAsFixed(0),
                      style: TextStyle(
                        color: Colors.white60,
                        fontSize: MediaQuery.of(context).size.width * 0.025,
                      ),
                    ),
                    Spacer(),
                    Text(
                      "4:57",
                      style: TextStyle(
                        color: Colors.white60,
                        fontSize: MediaQuery.of(context).size.width * 0.025,
                      ),
                    ),
                  ],
                ),
              ),
              FlutterSlider(
                values: [_lowervalue, _uppervalue],
                max: 297,
                min: 0,
                tooltip: FlutterSliderTooltip(
                  textStyle: TextStyle(fontSize: 13, color: Colors.transparent),
                  boxStyle: FlutterSliderTooltipBox(
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                    ),
                  ),
                ),
                trackBar: FlutterSliderTrackBar(
                  inactiveTrackBar: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    color: Colors.black12,
                    border: Border.all(width: 10, color: Colors.black87),
                    boxShadow: [
                      new BoxShadow(
                        color: Color(0xf171717),
                        offset: Offset(-3.0, -3.0),
                        blurRadius: (3.0),
                      ),
                      new BoxShadow(
                        color: Color(0xf404040),
                        offset: Offset(1.0, 1.0),
                        blurRadius: (3.0),
                      ),
                    ],
                  ),
                  activeTrackBar: BoxDecoration(
                    borderRadius: BorderRadius.circular(4.0),
                    boxShadow: [
                      new BoxShadow(
                        color: Color(0xf171717),
                        offset: Offset(-3.0, -3.0),
                        blurRadius: (3.0),
                      ),
                      new BoxShadow(
                        color: Color(0xf404040),
                        offset: Offset(1.0, 1.0),
                        blurRadius: (3.0),
                      ),
                    ],
                    gradient:
                        LinearGradient(colors: [Colors.red, Colors.amber]),
                  ),
                ),
                handler: FlutterSliderHandler(
                  child: Container(
                    padding: EdgeInsets.all(11),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0xff212121),
                      boxShadow: [
                        new BoxShadow(
                          color: Color(0xff1c1c1c),
                          offset: Offset(3.0, 3.0),
                          blurRadius: (5.0),
                        ),
                        new BoxShadow(
                          color: Color(0xf404040),
                          offset: Offset(-3.0, -3.0),
                          blurRadius: (5.0),
                        ),
                      ],
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.amber,
                        shape: BoxShape.circle,
                        boxShadow: [
                          new BoxShadow(
                            color: Color(0xff1c1c1c),
                            offset: Offset(5.0, 5.0),
                            blurRadius: (10.0),
                          ),
                          new BoxShadow(
                            color: Color(0xf404040),
                            offset: Offset(-5.0, -5.0),
                            blurRadius: (10.0),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                onDragging: (handlerIndex, lowerValue, upperValue) {
                  setState(() {
                    _lowervalue = lowerValue;
                    _uppervalue = upperValue;
                  });
                },
              ),
              SizedBox(
                height:MediaQuery.of(context).size.height *0.055,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _neuButton(IconData icon) {
    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Color(0xff2e2e2e),
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          colors: [Color(0xff1c1c1c), Color(0xff383838)],
        ),
        boxShadow: [
          new BoxShadow(
            color: Color(0xf1c1c1c),
            offset: Offset(15.0, 15.0),
            blurRadius: (20.0),
          ),
          new BoxShadow(
            color: Color(0xf484848),
            offset: Offset(-15.0, -15.0),
            blurRadius: (20.0),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(0.5),
        child: Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              colors: [Color(0xff383838), Color(0xff1a1a1a)],
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Icon(
              icon,
              size: MediaQuery.of(context).size.width * 0.045,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
