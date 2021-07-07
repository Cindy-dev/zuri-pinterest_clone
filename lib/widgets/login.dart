import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({ Key key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Expanded(
                        child: Container(
                          padding: EdgeInsets.all(20),
                          width: MediaQuery.of(context).size.width * .15,
                          height: MediaQuery.of(context).size.height * .2,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(
                                image: AssetImage('assets/images/pin1.png')),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          padding: EdgeInsets.all(20),
                          width: MediaQuery.of(context).size.width * .15,
                          height: MediaQuery.of(context).size.height * .2,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(
                                image: AssetImage('assets/images/pin5.png')),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          padding: EdgeInsets.all(10),
                          width: MediaQuery.of(context).size.width * .15,
                          height: MediaQuery.of(context).size.height * .2,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(
                                image: AssetImage('assets/images/pin8.png')),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(18, 120, 18, 0),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Expanded(
                        child: Container(
                          padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
                          width: MediaQuery.of(context).size.width * .3,
                          height: MediaQuery.of(context).size.height * .15,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(
                                fit: BoxFit.fitHeight,
                                image: AssetImage('assets/images/pin6.png')),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.fromLTRB(10, 55, 10, 50),
                          child: Stack(children: [
                            Container(
                              width: MediaQuery.of(context).size.width * .3,
                              height: MediaQuery.of(context).size.height * .15,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                image: DecorationImage(
                                    fit: BoxFit.contain,
                                    image:
                                        AssetImage('assets/images/pin7.png')),
                              ),
                            ),
                          ]),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.fromLTRB(0, 0, 10, 0),
                          width: MediaQuery.of(context).size.width * .3,
                          height: MediaQuery.of(context).size.height * .15,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(
                                image: AssetImage('assets/images/pin2.png')),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
      
    );
  }
}