import 'package:flutter/material.dart';
import 'main.dart';
import 'homePage.dart';

class FormWidget extends StatefulWidget {
  const FormWidget({Key? key}) : super(key: key);

  @override
  _FormWidgetState createState() => _FormWidgetState();
}

class _FormWidgetState extends State<FormWidget> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  String? _email = '';
  String? _password = '';
  @override
  Widget build(BuildContext context) {
    // Image Area showing main image
    Widget imageArea = Image.asset(
      './images/cricket.png',
      height: 250,
      width: 250,
    );

    //Email TextFormField Container
    Widget emailContainer = Container(
      padding: EdgeInsets.only(top: 5, left: 20, right: 20),
      child: TextFormField(
        decoration: InputDecoration(labelText: "Email"),
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'This field cant be null';
          }
          return null;
        },
        onSaved: (value) {
          _email = value;
        },
      ),
    );

    //Password TextFormField Container
    Widget passwordContainer = Container(
      padding: EdgeInsets.only(top: 5, left: 20, right: 20),
      child: TextFormField(
        obscureText: true,
        decoration: InputDecoration(labelText: "Password"),
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'This field cant be null';
          }
          return null;
        },
        onSaved: (value) {
          _password = value;
        },
      ),
    );

    // Login Button Container
    Widget loginButtonContainer = Container(
        padding: EdgeInsets.only(left: 40, right: 40),
        width: 350,
        child: ElevatedButton.icon(
            onPressed: () {
              if (_formKey.currentState!.validate()) {
                _formKey.currentState!.save();
                if (_email == 'razi@iqbal.com' && _password == '1234') {
                  Navigator.pop(context);
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => MyMainPage()));
                } else {
                  _showErrorDialog(context);
                }
              }
            },
            icon: Icon(Icons.login),
            label: Text("Login")));

    // Dialog for showing error

    // Form Area containing TextFormFields and ElevatedButton
    Widget formArea = Form(
        key: _formKey,
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              emailContainer,
              passwordContainer,
              SizedBox(
                height: 15,
              ),
              loginButtonContainer,
            ]));

    return ListView(
      children: [
        Container(
          padding: EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              imageArea,
              Card(
                margin: EdgeInsets.only(top: 15, left: 15, right: 15),
                child: Container(width: 370, height: 250, child: formArea),
              ),
            ],
          ),
        )
      ],
    );
  }

  _showErrorDialog(BuildContext context) {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text("Incorrect Credentials"),
            content: Text(
                "You have entered wrong email address or password. Please try again."),
            actions: [
              TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text("OK"))
            ],
          );
        });
  }
}
