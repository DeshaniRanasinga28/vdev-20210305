import 'package:flutter/material.dart';
import 'package:vdev/app/global/app_colors.dart';
import 'package:vdev/app/global/global.dart';
import 'package:vdev/app/model/model.dart';
import 'package:vdev/app/ui/widgets/common/common.dart';
import 'package:vdev/app/ui/widgets/custom_flat_button.dart';
import 'package:vdev/app/ui/widgets/custom_text_field.dart';
import 'package:validators/validators.dart' as validator;
import 'package:vdev/app/ui/screen/dashboard/dashboard_screen.dart';

class SignInScreen extends StatefulWidget{
  bool visible;

  SignInScreen({this.visible});

  @override
  State<StatefulWidget> createState() {
    return _SignInScreenState();
  }
}

class _SignInScreenState extends State<SignInScreen>{

  final _formKey = GlobalKey<FormState>();
  Model model = Model();
  Color _checkedColor = Colors.blueGrey[700];
  var now = DateTime.now();
  bool msg;

  @override
  void initState() {
    super.initState();
    msg = widget.visible;
  }

  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width;
    return Scaffold(
        backgroundColor: white225,
        appBar: AppBar(
          backgroundColor: Colors.blueGrey[700],
          automaticallyImplyLeading: false,
        ),
        body: SafeArea(
          child: Form(
            key: _formKey,
              child: ListView(
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(20, 60, 20, 20),
                    child:  Row(
                      children: [
                        Expanded(
                          child: Container(
                            alignment: Alignment.centerLeft,
                            child: textLabel('Email',
                                w < 420.0 ? 18.0 : 20.0, FontWeight.w700, black0),
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
                            child: textLabel(
                                'Password',
                                w < 420.0 ? 18.0 : 20.0,
                                FontWeight.w700,
                                black0),
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
                                fontSize: w < 420.0 ? 16.0 : 20.0,
                                fontWeight: FontWeight.w700,
                                textColor: Colors.white,
                                onPressed: () {
                                  if (_formKey.currentState.validate()) {
                                    _formKey.currentState.save();
                                    setState(() {
                                      _checkedColor = Colors.blueGrey[700];
                                    });

                                    String formatDate = format.format(now);
                                    String formatTime = timeFormat.format(now);

                                    _signIn(context, formatDate, formatTime);

                                  }else{
                                    setState(() {
                                      _checkedColor = Colors.grey;
                                    });
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
                  Visibility(
                      child: Padding(
                          padding: EdgeInsets.fromLTRB(20, 40, 20, 10),
                          child: Container(
                            width: w,
                              height: 30.0,
                              alignment: Alignment.center,
                              child: textLabel('Invalid email or password',
                                  w < 420.0 ? 18.0 : 20.0,
                                  FontWeight.w700, red)),
                      ),
                    visible: msg != null ?  true : false,
                  ),
                  Visibility(
                      child: Padding(
                          padding: EdgeInsets.fromLTRB(20, 0, 20, 20),
                          child: Container(
                              width: w,
                              height: 80.0,
                              alignment: Alignment.center,
                              child: textLabel(
                                  'Email: joe@black.lk  Password: Jo45*78'
                                  '\nEmail: amal@acme.lk  Password: La79*!_io'
                                  '\nEmail: peter@pan.lk  Password: Nap42-24',
                                  w < 420.0 ? 14.0 : 16.0, null, red)),
                      ),
                    visible: msg != null ?  true : false,
                  ),
                ],
              )
          )
        )
    );
  }

  _signIn(context, date, time){
    showPermissionPopup();
    Future.delayed(Duration(seconds: 3), () {
      if(model.email == 'joe@black.lk' &&  model.password == 'Jo45*78' ||
          model.email == 'amal@acme.lk' &&  model.password == 'La79*!_io' ||
          model.email == 'peter@pan.lk' &&  model.password == 'Nap42-24'){
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => DashboardScreen(
                    model: this.model, date: date, time: time)));
      }else{
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => SignInScreen(visible: true)));
      }

    });
  }

  void showPermissionPopup() async {
    showDialog(
      barrierDismissible: false,
      context: context,
      builder: (
          BuildContext context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          content: Container(
            height: 120.0,
            alignment: Alignment.center,
            child: Text('Please wait\nWhile we sign\nyou in...'),
          ),
        );
      },
    );
  }

}