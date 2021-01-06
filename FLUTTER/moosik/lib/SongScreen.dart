import 'package:flutter/material.dart';
import 'package:flutter_xlider/flutter_xlider.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SongScreen extends StatefulWidget {
  @override
  _SongScreenState createState() => _SongScreenState();
}

class _SongScreenState extends State<SongScreen> {
  double _lowervalue = 100.0;
  double _uppervalue;
  IconData faicon = FontAwesomeIcons.play;
  bool isPlaying = false;
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
          child: Expanded(
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
                          fontSize: MediaQuery.of(context).size.width * 0.04,
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
                      vertical: 0.0,
                      horizontal: 70.0,
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white12,
                        boxShadow: [
                          new BoxShadow(
                            color: Colors.black87,
                            offset: Offset(25.0, 25.0),
                            blurRadius: 32.0,
                          ),
                          new BoxShadow(
                            color: Colors.white24,
                            offset: Offset(-15.0, -15.0),
                            blurRadius: 32.0,
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
                  height: MediaQuery.of(context).size.height * 0.055,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: MediaQuery.of(context).size.width * 0.15,
                  ),
                  child: Row(
                    children: <Widget>[
                      _neuControls(FontAwesomeIcons.backward),
                      Spacer(),
                      GestureDetector(
                        
                        onTap: () {
                          if (isPlaying) {
                            setState(() {
                              faicon = FontAwesomeIcons.play;
                              isPlaying = !isPlaying;
                            });
                          } else if (isPlaying == false) {
                            setState(() {
                              faicon = FontAwesomeIcons.pause;
                              isPlaying = !isPlaying;
                            });
                          }
                        },
                        child: _neuplaypause(faicon),
                      ),
                      
                      Spacer(),
                      _neuControls(FontAwesomeIcons.forward),
                    ],
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height *0.05,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _neuplaypause(IconData faIcon) {
    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(color: Colors.red, width: 1.0),
        color: Color(0xff2e2e2e),
        gradient: LinearGradient(
          colors: [Colors.red, Colors.deepOrange[700]],
        ),
        boxShadow: [
          new BoxShadow(
            color: Color(0xff4a4a4a),
            offset: Offset(5.0, -5.0),
            blurRadius: 6.0,
          ),
          new BoxShadow(
            color: Color(0xff404040),
            offset: Offset(5.0, -5.0),
            blurRadius: 6.0,
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            gradient: LinearGradient(
              colors: [Colors.red, Colors.deepOrange[700]],
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: FaIcon(
              faIcon,
              color: Colors.white60,
              size: 0.075 * MediaQuery.of(context).size.width,
            ),
          ),
        ),
      ),
    );
  }

  Widget _neuControls(IconData faIcon) {
    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Color(0xff2e2e2e),
        gradient: LinearGradient(
          colors: [Color(0xff1c1c1c), Color(0xff383838)],
        ),
        boxShadow: [
          new BoxShadow(
            color: Color(0xff1c1c1c),
            offset: Offset(5.0, 5.0),
            blurRadius: 10.0,
          ),
          new BoxShadow(
            color: Color(0xff404040),
            offset: Offset(-5.0, -5.0),
            blurRadius: 10.0,
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            gradient: LinearGradient(
              colors: [Color(0xff303030), Color(0xff1a1a1a)],
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: FaIcon(
              faIcon,
              color: Colors.white60,
              size: 0.05 * MediaQuery.of(context).size.width,
            ),
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
