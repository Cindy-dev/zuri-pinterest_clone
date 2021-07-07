

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

///This method ensures navigation and kills the previous activity
navigateReplace(BuildContext context, Widget widget){
  Navigator.pushReplacement(context, CupertinoPageRoute(builder: (context)=> widget));
}

///This method ensures navigation and does not kill the previous activity
navigatePush(BuildContext context, Widget widget){
  Navigator.push(context, CupertinoPageRoute(builder: (context)=> widget));
}

///This method backward navigation
navigateBack(BuildContext context){
  Navigator.pop(context);
}



// - assets/images/mobile-1.svg
//     - assets/images/mobile-2.svg
//     - assets/images/mobile-3.svg
//     - assets/images/mobile-4.svg
//     - assets/images/mobile-5.svg
//     - assets/images/mobile.svg
//     - assets/images/Pinterest 1.svg