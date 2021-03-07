import 'package:flutter/material.dart';

class CustomFlatButton extends StatefulWidget{
  final String title;
  final Color textColor;
  final double fontSize;
  final FontWeight fontWeight;
  final VoidCallback onPressed;
  final Color color;
  final Color splashColor;
  final Color borderColor;
  final double borderWidth;


  CustomFlatButton({
        this.title,
        this.textColor,
        this.fontSize,
        this.fontWeight,
        this.onPressed,
        this.color,
        this.splashColor,
        this.borderColor,
        this.borderWidth});

  @override
  _CustomFlatButtonState createState() => _CustomFlatButtonState();
  
}

class _CustomFlatButtonState extends State<CustomFlatButton> {

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      onPressed: widget.onPressed,
      color: widget.color,
      splashColor: widget.splashColor,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12.0),
        child: Text(
          widget.title,
          softWrap: true,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: widget.textColor,
            decoration: TextDecoration.none,
            fontSize: widget.fontSize,
            fontWeight: widget.fontWeight,
            fontFamily: "OpenSans",
          ),
        ),
      ),
    );
  }
}
