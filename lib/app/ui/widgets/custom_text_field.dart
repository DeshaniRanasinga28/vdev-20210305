import 'package:flutter/material.dart';
import 'package:vdev/app/global/app_colors.dart';

class CustomTextField extends StatelessWidget{
  final Color baseColor;
  final Color borderColor;
  final Color errorColor;
  final TextInputType inputType;
  final bool obscureText;
  final Function validator;
  final Function onChanged;
  final bool isPassword;
  final bool isEmail;


  CustomTextField({
        this.baseColor,
        this.borderColor,
        this.errorColor,
        this.inputType,
        this.obscureText,
        this.validator,
        this.onChanged,
        this.isPassword = false,
        this.isEmail = false,
      });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: TextFormField(
        decoration: InputDecoration(
          contentPadding: EdgeInsets.all(15.0),
          border: new OutlineInputBorder(
              borderSide: new BorderSide(color: black0)
          ),
          filled: true,
          fillColor: Colors.grey[200],
        ),
        obscureText: isPassword ? true : false,
        validator: validator,
        onSaved: onChanged,
        keyboardType: isEmail ? TextInputType.emailAddress : TextInputType.text,
      ),
    );
  }

}
