import 'package:flutter/material.dart';

void main() {
  runApp(
    new MaterialApp(
      home: new Profile(),
    ),
  );
}

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final double _deviceWidth = MediaQuery.of(context).size.width;
    return new Scaffold(
      resizeToAvoidBottomPadding: true,
      appBar: new AppBar(
        centerTitle: true,
        title: new Container(
          width: _deviceWidth,
          child: new Text(
            'Edit Profile',
            style: new TextStyle(
              color: Colors.white,
            ),
          ),
        ),
      ),
      body: new Container(
        child: new ListView(
          padding: EdgeInsets.all(20.0),
          children: <Widget>[
            new Container(
              child: new Center(
                child: new Stack(
                  children: <Widget>[
                    new CircleAvatar(
                      radius: 100.0,
                      child: new Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("assets/koof.jpg"),
                              fit: BoxFit.cover,
                              repeat: ImageRepeat.noRepeat),
                          color: Colors.blue,
                          shape: BoxShape.circle,
                          border: Border.all(
                              width: 2.0, color: const Color(0xFFFFFFFF)),
                        ),
                      ),
                    ),
                    new Positioned(
                      top: 140.0,
                      left: 150.0,
                      child: new Container(
                        decoration: BoxDecoration(
                          color: Colors.orange,
                          shape: BoxShape.circle,
                          border: Border.all(
                              width: 2.0, color: const Color(0xFFFFFFFF)),
                        ),
                        child: IconButton(
                          icon: new Icon(Icons.edit),
                          color: Colors.white,
                          onPressed: () => null,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            new Container(
              padding: EdgeInsets.symmetric(vertical: 7.5, horizontal: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  new RichText(
                    text: new TextSpan(
                        text: 'Followers',
                        style: TextStyle(
                          color: Colors.grey,
                          fontFamily: 'OpenSansLight',
                          fontWeight: FontWeight.w400,
                          fontSize: 15,
                        ),
                        children: <TextSpan>[
                          new TextSpan(
                              text: '  2349',
                              style: TextStyle(
                                color: Colors.black,
                                fontFamily: 'OpenSansBold',
                                fontWeight: FontWeight.w400,
                                fontSize: 15,
                              )),
                        ]),
                  ),
                  new RichText(
                    text: new TextSpan(
                        text: 'Following',
                        style: TextStyle(
                          color: Colors.grey,
                          fontFamily: 'OpenSansLight',
                          fontWeight: FontWeight.w400,
                          fontSize: 15,
                        ),
                        children: <TextSpan>[
                          new TextSpan(
                              text: '  1205',
                              style: TextStyle(
                                color: Colors.black,
                                fontFamily: 'OpenSansBold',
                                fontWeight: FontWeight.w400,
                                fontSize: 15,
                              )),
                        ]),
                  )
                ],
              ),
            ),
            new Container(
              padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 0.0),
              child: new Column(
                children: <Widget>[
                  new Form(
                    child: new Column(
                      children: <Widget>[
                        new Container(
                          padding: EdgeInsets.fromLTRB(10.0, 0.0, 20.0, 0.0),
                          margin: EdgeInsets.symmetric(
                              vertical: 2.5, horizontal: 0.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30.0),
                            border: Border.all(
                              width: 2.0,
                              color: Colors.grey,
                            ),
                          ),
                          child: new TextField(
                            decoration: InputDecoration(
                              icon: new Icon(Icons.mail),
                              labelText: 'Full Name',
                              hintText: '',
                            ),
                          ),
                        ),
                        new Container(
                          padding: EdgeInsets.fromLTRB(10.0, 0.0, 20.0, 0.0),
                          margin: EdgeInsets.symmetric(
                              vertical: 2.5, horizontal: 0.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30.0),
                            border: Border.all(
                              width: 2.0,
                              color: Colors.grey,
                            ),
                          ),
                          child: new TextField(
                            keyboardType: TextInputType.emailAddress,
                            decoration: InputDecoration(
                              icon: new Icon(Icons.mail),
                              labelText: 'Email ID',
                              hintText: 'someone@example.com',
                            ),
                          ),
                        ),
                        new Container(
                          padding: EdgeInsets.fromLTRB(10.0, 0.0, 20.0, 0.0),
                          margin: EdgeInsets.symmetric(
                              vertical: 2.5, horizontal: 0.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30.0),
                            border: Border.all(
                              width: 2.0,
                              color: Colors.grey,
                            ),
                          ),
                          child: new TextField(
                            keyboardType: TextInputType.phone,
                            decoration: InputDecoration(
                              icon: new Icon(Icons.mail),
                              labelText: 'Phone Number',
                              hintText: '080123456789',
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            new Container(
              padding: EdgeInsets.symmetric(vertical: 0.0, horizontal: 40.0),
              child: new Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  color: Colors.orange,
                ),
                child: new FlatButton(
                  onPressed: () => null,
                  child: new Text(
                    'Save Profile',
                    style: new TextStyle(
                      color: Colors.white,
                      fontFamily: 'OpenSansBold',
                      fontWeight: FontWeight.w500,
                      fontSize: 15,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
