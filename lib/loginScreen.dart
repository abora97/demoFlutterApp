import 'package:flutter/material.dart';
import 'package:flutterappnew/signIn.dart';
import 'package:toast/toast.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.only(
            left: 0.0, top: 25.0, right: 0.0, bottom: 0.0),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: Column(
              children: <Widget>[
                Text(
                  "Login",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.blue),
                ),
                TextFormField(
                  decoration: InputDecoration(labelText: 'Enter your username'),
                ),
                TextFormField(
                  decoration: InputDecoration(labelText: "Enter yout password"),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: <Widget>[
                    Text("No Account yet ?"),
                    Container(
                      margin: const EdgeInsets.only(
                          left: 5.0, top: 0.0, right: 5.0, bottom: 0.0),
                      child: InkWell(
                        child: Text(
                          "SignIn",
                          style: TextStyle(color: Colors.blue),
                        ),
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => SignIn()));
                        },
                      ),
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: RaisedButton(
                    child: Text(
                      "Login",
                      style: TextStyle(color: Colors.blue),
                    ),
                    color: Colors.amber,
                    onPressed: onClickBtn,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  void onClickBtn() {
    Toast.show("Toast plugin app", context,
        duration: Toast.LENGTH_SHORT, gravity: Toast.BOTTOM);
  }
}
