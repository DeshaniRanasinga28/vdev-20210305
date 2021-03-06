import 'package:flutter/material.dart';
import 'package:vdev/app/global/app_colors.dart';
import 'package:vdev/app/model/model.dart';
import 'package:vdev/app/ui/widgets/common/common.dart';
import 'package:vdev/app/ui/widgets/custom_flat_button.dart';
import 'package:vdev/app/ui/widgets/custom_text_field.dart';
import 'package:validators/validators.dart' as validator;
import 'package:vdev/app/ui/screen/dashboard/dashboard_screen.dart';

class SignInScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _SignInScreenState();
  }
}

class _SignInScreenState extends State<SignInScreen>{

  final _formKey = GlobalKey<FormState>();
  Model model = Model();

  Color _checkedColor = Colors.blueGrey[700];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: white225,
        appBar: AppBar(
          backgroundColor: Colors.blueGrey[700],
        ),
        body: SafeArea(
          child: Form(
            key: _formKey,
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(20, 60, 20, 20),
                    child:  Row(
                      children: [
                        Expanded(
                          child: Container(
                            alignment: Alignment.centerLeft,
                            child: textLabel('Email', 20.0, FontWeight.w700),
                          ),
                          flex: 1,
                        ),
                        Expanded(
                          child: Container(
                            child: CustomTextField(
                              isEmail: true,
                              validator: (String value) {
                                if (!validator.isEmail(value)) {
                                  return 'Please enter a valid email';
                                }
                                return null;
                              },
                              onChanged: (String value) {
                                model.email = value;
                              },
                            ),
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
                            alignment: Alignment.centerLeft,
                            child: textLabel('Password', 20.0, FontWeight.w700),
                          ),
                          flex: 1,
                        ),
                        Expanded(
                          child: Container(
                            child: CustomTextField(
                              isPassword: true,
                              validator: (String value) {
                                if (value.length < 6) {
                                  return 'Password should be minimum 6 characters';
                                }
                                _formKey.currentState.save();
                                return null;
                              },
                              onChanged: (String value) {
                                model.password = value;
                              },
                            ),
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
                              padding: const EdgeInsets.only(right: 20.0),
                              child: CustomFlatButton(
                                title: "Sign-in",
                                fontSize: 20,
                                fontWeight: FontWeight.w700,
                                textColor: Colors.white,
                                onPressed: () {
                                  // Navigator.of(context).pushNamed("/home");
                                  if (_formKey.currentState.validate()) {
                                    _formKey.currentState.save();
                                    setState(() {
                                      _checkedColor = Colors.blueGrey[700];
                                    });

                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => DashboardScreen(model: this.model)));

                                  }else{
                                    setState(() {
                                      _checkedColor = Colors.grey;
                                    });
                                    print(":--->ERROR");
                                  }

                                },
                                color: _checkedColor,
                                splashColor: Colors.black12,
                                borderColor: Colors.black,
                                borderWidth: 0,
                                // color: Colors.blueGrey[700],
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              )
          )
        )
    );
  }

  // void showPermissionPopup() async {
  //   showDialog(
  //     context: context,
  //     builder: (
  //         BuildContext context) {
  //       return AlertDialog(
  //         shape: RoundedRectangleBorder(
  //           borderRadius: BorderRadius.circular(10.0),
  //         ),
  //         title: Text('title'),
  //         content: Text('content'),
  //       );
  //     },
  //   );
  // }

}