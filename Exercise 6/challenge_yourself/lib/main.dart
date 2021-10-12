import 'package:flutter/material.dart';
import 'change_password.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Cricket Fantasy League"),
          centerTitle: true,
        ),
        body: FormWidget());
  }
}

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
                  height: 250,
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
                            ),
                            Container(
                              padding:
                                  EdgeInsets.only(top: 5, left: 20, right: 20),
                              child: TextFormField(
                                obscureText: true,
                                decoration:
                                    InputDecoration(labelText: "Password"),
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
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    ChangePassword(_password)));
                                      }
                                    },
                                    icon: Icon(Icons.login),
                                    label: Text("Login"))),
                          ])),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
