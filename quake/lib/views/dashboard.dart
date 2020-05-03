import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'pageone.dart';
import 'pagetwo.dart';
import 'pagethree.dart';


class MyHomePage extends StatefulWidget {

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  List<Widget> pages = [PageOne(),PageTwo(),PageThree()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        itemCount: pages.length,
        itemBuilder: (context, position) => pages[position],
      ),
    );
  }


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
      RawMaterialButton(
        onPressed: () {},
        elevation: 20.0,
        child: Center(
          child: Image(
            image: AssetImage("./assets/images/icon-waveform.png"),
          ),
        ),
        padding: EdgeInsets.all(50.0),
        shape: CircleBorder(),
      ),

    ]);
  }
}






















class Dashboard extends StatefulWidget {
  static const String id = 'dashboard';

  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  Widget side() {
    return RaisedButton(
      onPressed: () {},
      elevation: 2.0,
      color: Colors.grey,
    );
  }

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
      RawMaterialButton(
        onPressed: () {},
        elevation: 20.0,
        child: Center(
          child: Image(
            image: AssetImage("./assets/images/icon-waveform.png"),
          ),
        ),
        padding: EdgeInsets.all(50.0),
        shape: CircleBorder(),
      ),

    ]);
  }

  @override
  Widget build(BuildContext context) {
    return MyHomePage();
  }}
    /*
    Scaffold(

      body: SafeArea(
          child: Container(
        color: Colors.black,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            /*
              Flexible(
                flex: 1,
                fit: FlexFit.tight,
                child: Column(
                  children: <Widget>[side(), side(), side(), side(), side()],
                ),
              ),

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
<<<<<<< HEAD
                          color: Colors.deepPurple,
                          child: Text(
                            "We provide music to the deaf",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontFamily: 'Pangolin',
                                fontSize: 30,
                                color: Colors.purpleAccent),
                          ))),
                          */
            /*Flexible(
                flex: 1,
                child: Container(
                  width: 25,
                  color: Colors.purpleAccent,
                )),
                */
            Flexible(
              flex: 6,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Flexible(
                    flex: 6,
                    child: design_stack(),
                  ),
                  Flexible(
                    flex: 2,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        side(),
                        side(),
                        side(),
                      ],
                    ),
                  ),
                ],
=======
                          color:Colors.deepPurple,
                          child:Text(
                        "We provide music to the deaf",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontFamily: 'Pangolin',
                            fontSize: 30,
                            color: Colors.purpleAccent),
                      ))),
                  Flexible(flex: 6, 
                    child: Hero(
                      tag:'container',
                      child: design_stack()
                    )
                  ),
                ]),
>>>>>>> bba5d3cdeb3da77c8b9ad33686b51451a55f585d
              ),
            ),
          ],
        ),
      ));


  }
}*/
