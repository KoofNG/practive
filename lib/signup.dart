import 'package:flutter/material.dart';
import 'login.dart';
import 'profile.dart';

void main() {
  runApp(new MaterialApp(
    home: new SignUp(),
  ));
}

class SignUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final double _deviceWidth = MediaQuery.of(context).size.width;
    bool acceptedTerms = false;
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
                        'Create Account',
                        style: TextStyle(
                          fontFamily: 'OpenSansBold',
                          fontSize: 24.0,
                          fontWeight: FontWeight.w800,
                          color: Colors.black,
                        ),
                      ),
                      new Form(
                        child: new Column(
                          children: <Widget>[
                            new TextField(
                              decoration: InputDecoration(
                                icon: new Icon(Icons.account_circle),
                                labelText: 'User Name*',
                                hintText: 'someone@example.com',
                              ),
                            ),
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
                              child: new Row(
                                children: <Widget>[
                                  new Checkbox(
                                    value: acceptedTerms,
                                    onChanged: (bool value) {
                                      acceptedTerms = true;
                                    },
                                  ),
                                  new Text(
                                    'I Read and agree to Terms & Conditions',
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                      color: Colors.black87,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w300,
                                      fontStyle: FontStyle.italic,
                                      fontFamily: 'OpenSansItalic',
                                    ),
                                  ),
                                ],
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
                                  child: new Text(
                                    'Register Now',
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
                                'Or Register using Social Media',
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
                    "Already have an account? ",
                    style: new TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                    ),
                  ),
                  new FlatButton(
                    onPressed: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => Login()));
                    },
                    child: new Text(
                      'Login',
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
