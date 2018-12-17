import 'package:flutter/material.dart';

import 'profile.dart';
import 'signup.dart';

void main() {
  runApp(new MaterialApp(
    home: new Login(),
  ));
}

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final double _deviceWidth = MediaQuery.of(context).size.width;
    //final double _deviceHeight = MediaQuery.of(context).size.height;
    return new Scaffold(
      resizeToAvoidBottomPadding: true,
      body: new Container(
        decoration: BoxDecoration(
          color: Colors.orangeAccent,
        ),
        child: new ListView(
          children: <Widget>[
            new Container(
              height: 190.0,
              padding: EdgeInsets.only(bottom: 5.0),
              decoration: BoxDecoration(
                color: Colors.yellowAccent,
                image: DecorationImage(
                  image: AssetImage("assets/logo.jpg"),
                  repeat: ImageRepeat.noRepeat,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            new Container(
              padding: EdgeInsets.only(top: 15.0, left: 15.0, right: 15.0),
              child: new Card(
                child: new Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 15.0, vertical: 18.0),
                  child: new Column(
                    children: <Widget>[
                      new Text(
                        'Hello',
                        style: TextStyle(
                          fontFamily: 'OpenSansBold',
                          fontSize: 24.0,
                          fontWeight: FontWeight.w800,
                          color: Colors.black,
                        ),
                      ),
                      new Text(
                        'Sign into your account',
                        style: TextStyle(
                          fontFamily: 'OpenSansLight',
                          fontSize: 16.0,
                          fontWeight: FontWeight.w300,
                          color: Colors.black,
                        ),
                      ),
                      new Form(
                        child: new Column(
                          children: <Widget>[
                            new TextField(
                              decoration: InputDecoration(
                                icon: new Icon(Icons.mail),
                                labelText: 'Email ID',
                                hintText: 'someone@example.com',
                              ),
                            ),
                            new TextField(
                              obscureText: true,
                              decoration: InputDecoration(
                                icon: new Icon(
                                  Icons.remove_red_eye,
                                ),
                                labelText: 'Password',
                                hintText: 'Password',
                              ),
                            ),
                            new Container(
                              padding: EdgeInsets.only(top: 10.0),
                              width: _deviceWidth,
                              child: new Text(
                                'Forgot your Password?',
                                textAlign: TextAlign.end,
                                style: TextStyle(
                                  color: Colors.black87,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w300,
                                  fontStyle: FontStyle.italic,
                                  fontFamily: 'OpenSansItalic',
                                ),
                              ),
                            ),
                            new Container(
                              width: _deviceWidth,
                              padding: EdgeInsets.symmetric(
                                  horizontal: 35.0, vertical: 10.0),
                              child: new Container(
                                height: 45.0,
                                padding: EdgeInsets.symmetric(
                                    horizontal: 20.0, vertical: 0.0),
                                decoration: BoxDecoration(
                                  color: Colors.orangeAccent,
                                  shape: BoxShape.rectangle,
                                  borderRadius: BorderRadius.circular(22.5),
                                ),
                                child: new FlatButton(
                                  onPressed: () {
                                    Navigator.of(context).push(
                                        MaterialPageRoute(
                                            builder: (context) => Profile()));
                                  },
                                  padding: EdgeInsets.fromLTRB(
                                      20.0, 10.0, 20.0, 10.0),
                                  child: new Text(
                                    'Login',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w700,
                                      fontSize: 16,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            new Container(
                              width: _deviceWidth,
                              padding: EdgeInsets.symmetric(
                                  horizontal: 0.0, vertical: 5.0),
                              child: new Text(
                                'Or Login using Social Media',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.black87,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 14.0,
                                  fontFamily: 'OpenSansRegular',
                                ),
                              ),
                            ),
                            new Container(
                              child: new Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  new Container(
                                    height: 35.0,
                                    width: 35.0,
                                    margin:
                                        EdgeInsets.symmetric(horizontal: 5.0),
                                    decoration: BoxDecoration(
                                      color: Colors.tealAccent,
                                      image: DecorationImage(
                                          image:
                                              AssetImage("assets/bgImage.PNG"),
                                          fit: BoxFit.cover,
                                          repeat: ImageRepeat.noRepeat),
                                    ),
                                    child: new FlatButton(
                                      onPressed: () => null,
                                      child: new Text(
                                        '',
                                        style: TextStyle(
                                          color: Colors.red,
                                          fontSize: 14,
                                        ),
                                      ),
                                    ),
                                  ),
                                  new Container(
                                    height: 35.0,
                                    width: 35.0,
                                    margin:
                                        EdgeInsets.symmetric(horizontal: 5.0),
                                    decoration: BoxDecoration(
                                      color: Colors.tealAccent,
                                      image: DecorationImage(
                                          image:
                                              AssetImage("assets/bgImage.PNG"),
                                          fit: BoxFit.cover,
                                          repeat: ImageRepeat.noRepeat),
                                    ),
                                    child: new FlatButton(
                                      onPressed: () => null,
                                      child: new Text(
                                        '',
                                        style: TextStyle(
                                          color: Colors.red,
                                          fontSize: 14,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            new Container(
              padding: EdgeInsets.only(bottom: 5.0),
              child: new Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  new Text(
                    "Don't have an account? ",
                    style: new TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                    ),
                  ),
                  new FlatButton(
                    padding:
                        EdgeInsets.symmetric(horizontal: 5.0, vertical: 0.0),
                    onPressed: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => SignUp()));
                    },
                    child: new Text(
                      'Register Now',
                      style: new TextStyle(
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                        fontSize: 14,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
