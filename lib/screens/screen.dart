import 'dart:async';

import 'package:flutter/material.dart';
import 'package:pinterest_clone/screens/login_screen.dart';
import 'package:pinterest_clone/utils/Navigators.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState(){
    super.initState(); 
    Timer(
      Duration(seconds: 1), ()=> navigatePush(context, LoginScreen()));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: Column(mainAxisSize: MainAxisSize.min, children: [
          Flexible(
            flex: 4,
            child: Row(
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(10, 0, 5, 0),
                  child: Column(
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.all(20),
                        width: MediaQuery.of(context).size.width * .3,
                        height: MediaQuery.of(context).size.height * .2,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                              image: AssetImage('assets/images/mobile.png')),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(10, 5, 0, 0),
                        width: MediaQuery.of(context).size.width * .3,
                        height: MediaQuery.of(context).size.height * .2,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                              fit: BoxFit.contain,
                              image: AssetImage('assets/images/Image.png')),
                        ),
                      ),
                    ],
                  ),
                ),
                Stack(
                  children: [
                    Container(
                      padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
                      width: MediaQuery.of(context).size.width * .3,
                      height: MediaQuery.of(context).size.height * .2,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                            image: AssetImage('assets/images/mobile-1.png')),
                      ),
                    ),
                    Container(
                      alignment: Alignment.bottomCenter,
                      margin: EdgeInsets.fromLTRB(0, 170, 0, 50),
                      width: MediaQuery.of(context).size.width * .3,
                      height: MediaQuery.of(context).size.height * .2,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                            fit: BoxFit.fitHeight,
                            image: AssetImage('assets/images/mobile-2.png')),
                      ),
                    ),
                    Container(
                      color: Colors.transparent,
                      alignment: Alignment.bottomCenter,
                      margin: EdgeInsets.fromLTRB(20, 150, 0, 40),
                      width: MediaQuery.of(context).size.width * .2,
                      height: MediaQuery.of(context).size.height * .3,
                      child: CircleAvatar(
                          radius: MediaQuery.of(context).size.width * .1,
                          child: Image.asset(
                            'assets/images/Pinterest 1.png',
                            alignment: Alignment.center,
                          )),
                    ),
                  ],
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(5, 0, 10, 0),
                    child: Column(
                      children: [
                        Container(
                          padding: EdgeInsets.all(20),
                          width: MediaQuery.of(context).size.width * .3,
                          height: MediaQuery.of(context).size.height * .2,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(
                                image: AssetImage('assets/images/mobile.png')),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 5, 10, 0),
                          width: MediaQuery.of(context).size.width * .3,
                          height: MediaQuery.of(context).size.height * .2,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(
                                image: AssetImage('assets/images/Image-1.png')),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              alignment: Alignment.topCenter,
              child: Text(
                'Welcome to Pinterest',
                style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'WorkSans',
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Flexible(
            flex: 3,
            child: Container(
              alignment: Alignment.bottomCenter,
              margin: const EdgeInsets.all(28.0),
              child: IconButton(
                  icon: Icon(Icons.pending),
                  color: Colors.white,
                  iconSize: 40,
                  onPressed: () {}),
            ),
          ),
        ]));
  }
}
