import 'package:flutter/material.dart';
import 'package:login_signup_events/events_list.dart';
import 'new_user_registration.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text('Login Sign-Up Events'),
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
                    hintText: 'Enter your password'),
              ),
              SizedBox(height: 8),
              RaisedButton(
                child: Text('Sign In'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => CardEvent()),
                  );
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
