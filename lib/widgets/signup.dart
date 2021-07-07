import 'package:flutter/material.dart';

class SignUp extends StatelessWidget {
  const SignUp({ Key key }) : super(key: key);

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
                          width: MediaQuery.of(context).size.height * .15,
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
                          width: MediaQuery.of(context).size.height * .15,
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
                          width: MediaQuery.of(context).size.height * .15,
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
               
              ],
            ),
      
    );
  }
}