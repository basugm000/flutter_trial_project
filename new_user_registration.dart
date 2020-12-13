import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class NewUserRegistration extends StatefulWidget {

  @override
  _NewUserRegistrationState createState() => _NewUserRegistrationState();
}

class _NewUserRegistrationState extends State<NewUserRegistration> {

  String username = "";
  String email = "";
  String password = "";
  String displayName = "";

  @override
  void initState(){
    getData();
  }

  getData() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      displayName = prefs.getString('displayName');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        title: Text('Sign-Up Page'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: <Widget>[
              SizedBox(height: 8),
              TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Enter your username'),
              ),
              SizedBox(height: 8),
              TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Enter your username'),
              ),
              SizedBox(height: 8),
              TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Enter your password'),
              ),
              SizedBox(height: 8),
              RaisedButton(
                child: Text('Register as New User'),
                onPressed: () async {
                },
              ),
              SizedBox(height: 8),
              FlatButton(
                child: Text('New User Registration'),
                // Within the `FirstRoute` widget
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => NewUserRegistration()),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

