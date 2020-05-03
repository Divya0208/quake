import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  static const String id = 'dashboard';

  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
 /* Widget side() {
    return RawMaterialButton(
      onPressed: () {},
      elevation: 2.0,
      fillColor: Colors.lightBlueAccent,
      padding: EdgeInsets.all(60.0),
      shape: CircleBorder(),
    );
  }
  */

  Widget design_stack() {
    return Stack(children: <Widget>[
      RawMaterialButton(
        onPressed: () {},
        elevation: 2.0,
        child: Ink(
            decoration: BoxDecoration(
          shape: BoxShape.circle,
          gradient: LinearGradient(
            colors: [Color(0xff570292), Color(0xff743469)],
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
          ),
        )),
        padding: EdgeInsets.all(50.0),
        shape: CircleBorder(),
      ),
      RawMaterialButton(
        onPressed: () {},
        elevation: 20.0,
        child: Ink(
            decoration: BoxDecoration(
          shape: BoxShape.circle,
          gradient: LinearGradient(
            colors: [Color(0xff6F16AC), Color(0xff923582)],
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
          ),
        )),
        padding: EdgeInsets.all(65.0),
        shape: CircleBorder(),
      ),
      RawMaterialButton(
        onPressed: () {},
        elevation: 20.0,
        child: Ink(
            decoration: BoxDecoration(
          shape: BoxShape.circle,
          gradient: LinearGradient(
            colors: [Color(0xff8115CB), Color(0xffA22A8D)],
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
          ),
        )),
        padding: EdgeInsets.all(80.0),
        shape: CircleBorder(),
      ),
      RawMaterialButton(
        onPressed: () {},
        elevation: 20.0,
        child: Ink(
            decoration: BoxDecoration(
          shape: BoxShape.circle,
          gradient: LinearGradient(
            colors: [Color(0xff8E24D6), Color(0xffBD28A3)],
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
          ),
        )),
        padding: EdgeInsets.all(95.0),
        shape: CircleBorder(),
      ),
    ]);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Colors.black,
          child: Row(
            children: <Widget>[
              /*
              Flexible(
                flex: 1,
                fit: FlexFit.tight,
                child: Column(
                  children: <Widget>[side(), side(), side(), side(), side()],
                ),
              ),
              */
              Flexible(
                flex: 4,
                child: Column(children: <Widget>[
                  Flexible(
                    flex: 3,
                    child: Padding(
                      padding: EdgeInsets.symmetric(vertical: 20),
                      child: Text(
                        "Welcome to Quake",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontFamily: 'Pangolin',
                            fontSize: 40,
                            color: Colors.white),
                      ),
                    ),
                  ),
                  Flexible(
                      flex: 4,
                      child: Container(
                          color:Colors.deepPurple,
                          child:Text(
                        "We provide music to the deaf",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontFamily: 'Pangolin',
                            fontSize: 30,
                            color: Colors.purpleAccent),
                      ))),
                  Flexible(flex: 6, child: design_stack()),
                ]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
