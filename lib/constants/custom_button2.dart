import 'package:flutter/material.dart';


class CustomButtton2 extends StatelessWidget {
  final onPressed;
  final String text;
  final double width;
  final Color color;
  final Color textColor;
  CustomButtton2({this.onPressed, this.text, this.width, this.color, this.textColor});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      decoration:BoxDecoration(
        color: color, 
        borderRadius: BorderRadius.circular(25),
      ),
      child: FlatButton(
        color: color,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(18),
        ),
        padding: EdgeInsets.symmetric(vertical:10,horizontal:20),  
        child: 
         Text(text,
            style: TextStyle(
              fontSize: 18,
              fontFamily: 'WorkSans',
              color: textColor, 
              fontWeight: FontWeight.bold
            ),
          ),
        onPressed: onPressed,
      ),
    );
  }
}

