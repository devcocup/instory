import 'package:flutter/material.dart';
import 'package:instory/utils/colors.dart';
import 'package:instory/wave_clipper.dart';

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new _Home();
}

class _Home extends State<Home> with TickerProviderStateMixin {
  bool loading = false;
  bool fetchingStories = false;
  TextEditingController _controller;
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _controller = new TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    double totalHeight = MediaQuery.of(context).size.height;
    double waveSection = totalHeight/2.5;

    return SafeArea(
      bottom: true,
      top: false,
      child: Scaffold(
        key: _scaffoldKey,
        resizeToAvoidBottomPadding: true,
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Container(
                  height: waveSection,
                  child: ClipPath(
                    clipper: WaveClipper(),
                    clipBehavior: Clip.antiAlias,
                    child: Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(gradient: LinearGradient(colors: [instaRed, instaViolet])),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Image.asset("assets/Instory_white.png", width: 64, height: 64,),
                          Padding(
                            padding: const EdgeInsets.only(top: 22),
                            child: Text(
                              "Instory",
                              style: TextStyle(
                                color: Colors.white,
                                fontFamily: "MoonlightsOnTheBeach",
                                fontWeight: FontWeight.normal,
                              ),
                              textScaleFactor: 4,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}