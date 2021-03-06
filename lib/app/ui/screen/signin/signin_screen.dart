import 'package:flutter/material.dart';
import 'package:vdev/app/global/app_colors.dart';
import 'package:vdev/app/ui/widgets/common/common.dart';
import 'package:vdev/app/ui/widgets/custom_flat_button.dart';
import 'package:vdev/app/ui/widgets/custom_text_field.dart';
import 'package:vdev/app/validator.dart';

class SignInScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _SignInScreenState();
  }
}

class _SignInScreenState extends State<SignInScreen>{
  final TextEditingController username = new TextEditingController();
  final TextEditingController password = new TextEditingController();

  CustomTextField usernameField;
  CustomTextField passwordField;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    usernameField = new CustomTextField(
      baseColor: Colors.black,
      borderColor: Colors.black,
      errorColor: Colors.red,
      controller: username,
      obscureText: false,
      inputType: TextInputType.emailAddress,
      validator: Validator.validateEmail,
    );

    passwordField = new CustomTextField(
      baseColor: Colors.black,
      borderColor: Colors.black,
      errorColor: Colors.red,
      controller: password,
      obscureText: true,
      inputType: TextInputType.text,
      validator: Validator.validatePassword,
    );
  }


  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;

    return Scaffold(
        backgroundColor: white225,
        appBar: AppBar(
          backgroundColor: Colors.blueGrey[700],
        ),
        body: SafeArea(
          child: CustomScrollView(
            slivers: [
              SliverFillRemaining(
                hasScrollBody: false,
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                     padding: EdgeInsets.fromLTRB(20, 60, 20, 20),
                     child:  Row(
                       children: [
                         Expanded(
                           child: Container(
                             height: 50.0,
                             alignment: Alignment.centerLeft,
                             child: textLabel('Email', 20.0, FontWeight.w700),
                           ),
                           flex: 1,
                         ),
                         Expanded(
                           child: Container(
                             height: 50.0,
                             child: usernameField,
                           ),
                           flex: 2,
                         )
                       ],
                     ),
                   ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(20, 0, 20, 20),
                      child:  Row(
                        children: [
                          Expanded(
                            child: Container(
                              height: 50.0,
                              alignment: Alignment.centerLeft,
                              child: textLabel('Password', 20.0, FontWeight.w700),
                            ),
                            flex: 1,
                          ),
                          Expanded(
                            child: Container(
                              height: 50.0,
                              child: passwordField,
                            ),
                            flex: 2,
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(20, 0, 20, 20),
                      child:  Row(
                        children: [
                          Expanded(
                            child: SizedBox(
                              height: 50.0
                            ),
                            flex: 2,
                          ),
                          Expanded(
                            child: Container(
                              height: 50.0,
                              alignment: Alignment.centerRight,
                              child: Padding(
                                padding: const EdgeInsets.only(right: 10.0),
                                child: CustomFlatButton(
                                  title: "Sign-in",
                                  fontSize: 20,
                                  fontWeight: FontWeight.w700,
                                  textColor: Colors.white,
                                  onPressed: () {
                                    // Navigator.of(context).pushNamed("/home");
                                  },
                                  splashColor: Colors.black12,
                                  borderColor: Colors.black,
                                  borderWidth: 0,
                                  color: Colors.blueGrey[700],
                                ),
                              ),
                            ),
                            // flex: 1,
                          )
                        ],
                      ),
                    ),
                  ],
                )
              ),
            ],
          ),
        )
    );
  }

}