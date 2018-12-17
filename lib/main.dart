import 'package:flutter/material.dart';
import 'login.dart';
import 'signup.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final double _deviceWidth = MediaQuery.of(context).size.width;
    final double _deviceHeight = MediaQuery.of(context).size.height;
    return new Scaffold(
      body: new Container(
        padding: EdgeInsets.fromLTRB(30.0, 70.0, 30.0, 40.0),
        height: _deviceHeight,
        width: _deviceWidth,
        decoration: new BoxDecoration(
          color: Colors.orange,
        ),
        child: new Column(
          children: <Widget>[
            new Container(
              height: 200.0,
              padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 10.0),
              decoration: BoxDecoration(
                  image: new DecorationImage(
                image: AssetImage("assets/food2.PNG"),
                repeat: ImageRepeat.noRepeat,
                fit: BoxFit.cover,
              )),
            ),
            new Container(
              padding: EdgeInsets.symmetric(vertical: 10.0),
              child: new RichText(
                textAlign: TextAlign.center,
                text: new TextSpan(
                  text: "Fruit",
                  style: new TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'OpenSansRegular',
                    fontSize: 40,
                  ),
                  children: <TextSpan>[
                    new TextSpan(
                      text: 'ley',
                      style: new TextStyle(
                        fontWeight: FontWeight.w500,
                        fontFamily: 'OpenSansRegular',
                        color: Colors.red,
                        fontSize: 40,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            new Container(
              margin: EdgeInsets.fromLTRB(0.0, 25.0, 0.0, 0.0),
              child: new Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  new Container(
                    height: 45.0,
                    padding:
                        EdgeInsets.symmetric(horizontal: 20.0, vertical: 0.0),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(22.5),
                    ),
                    child: new FlatButton(
                      onPressed: () {
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) => Login()));
                      },
                      padding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                      child: new Text(
                        'Login',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                          fontFamily: 'OpenSansRegular',
                        ),
                      ),
                    ),
                  ),
                  new Container(
                    height: 45.0,
                    padding:
                        EdgeInsets.symmetric(horizontal: 15.0, vertical: 0.0),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(22.5),
                    ),
                    child: new FlatButton(
                      onPressed: () {
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) => SignUp()));
                      },
                      padding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                      child: new Text(
                        'Register Now',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                          fontFamily: 'OpenSansRegular',
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
    );
  }
}
