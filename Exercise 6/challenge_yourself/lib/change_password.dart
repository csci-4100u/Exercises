import 'package:flutter/material.dart';

class ChangePassword extends StatelessWidget {
  ChangePassword(this.oldPassword);
  String? oldPassword;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Change Password"),
          centerTitle: true,
        ),
        body: FormWidget(oldPassword: oldPassword));
  }
}

class FormWidget extends StatefulWidget {
  FormWidget({Key? key, this.oldPassword}) : super(key: key);

  String? oldPassword;
  @override
  _FormWidgetState createState() => _FormWidgetState();
}

class _FormWidgetState extends State<FormWidget> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  String? _oldPasswordEntered = '';
  String? _newPassword = '';
  String? _confirmPassword = '';
  bool isChanged = false;
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          padding: EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                './images/cricket.png',
                height: 250,
                width: 250,
              ),
              Card(
                margin: EdgeInsets.only(top: 15, left: 15, right: 15),
                child: Container(
                  width: 370,
                  height: 340,
                  child: Form(
                      key: _formKey,
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              padding:
                                  EdgeInsets.only(top: 5, left: 20, right: 20),
                              child: TextFormField(
                                obscureText: true,
                                decoration:
                                    InputDecoration(labelText: "Old Password"),
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'This field cant be null';
                                  }
                                  return null;
                                },
                                onSaved: (value) {
                                  _oldPasswordEntered = value;
                                },
                              ),
                            ),
                            Container(
                              padding:
                                  EdgeInsets.only(top: 5, left: 20, right: 20),
                              child: TextFormField(
                                obscureText: true,
                                decoration:
                                    InputDecoration(labelText: "New Password"),
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'This field cant be null';
                                  }
                                  return null;
                                },
                                onSaved: (value) {
                                  _newPassword = value;
                                },
                              ),
                            ),
                            Container(
                              padding:
                                  EdgeInsets.only(top: 5, left: 20, right: 20),
                              child: TextFormField(
                                obscureText: true,
                                decoration: InputDecoration(
                                    labelText: "Confirm Password"),
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'This field cant be null';
                                  }
                                  return null;
                                },
                                onSaved: (value) {
                                  _confirmPassword = value;
                                },
                              ),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Container(
                                padding: EdgeInsets.only(left: 40, right: 40),
                                width: 350,
                                child: ElevatedButton.icon(
                                    onPressed: () {
                                      if (_formKey.currentState!.validate()) {
                                        _formKey.currentState!.save();
                                        print("Inside Validate");
                                        print(widget.oldPassword);
                                        if (_oldPasswordEntered ==
                                            widget.oldPassword) {
                                          _showConfirmationDialog(context);
                                          setState(() {
                                            isChanged = true;
                                          });
                                          //Navigator.pop(context);

                                        }
                                      }
                                    },
                                    icon: Icon(Icons.login),
                                    label: Text("Confirm"))),
                          ])),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }

  _showConfirmationDialog(BuildContext context) {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text("Password Changed"),
            content: Text("Password has been successfully changed"),
            actions: [
              TextButton(
                  onPressed: () {
                    return Navigator.pop(context, "Yes");
                  },
                  child: Text("OK"))
            ],
          );
        }).then((value) {
      if (value == "Yes") {
        print("Yes");
        Navigator.pop(context);
      }
    });
  }
}
