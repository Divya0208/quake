import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:quake/views/player.dart';

class PageOne extends StatelessWidget {
  Widget design_stack(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(50.0),
      child: Stack(children: <Widget>[
        RawMaterialButton(
          onPressed: () {
            Navigator.pushNamed(context, Player.id);
          },
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
          shape: CircleBorder(),
        ),
        RawMaterialButton(
          onPressed: () {
            Navigator.pushNamed(context, Player.id);
          },
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
          padding: EdgeInsets.all(25.0),
          shape: CircleBorder(),
        ),
        RawMaterialButton(
          onPressed: () {
            Navigator.pushNamed(context, Player.id);
          },
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
          padding: EdgeInsets.all(55.0),
          shape: CircleBorder(),
        ),
        RawMaterialButton(
          onPressed: () {
            Navigator.pushNamed(context, Player.id);
          },
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
          onPressed: () {
            Navigator.pushNamed(context, Player.id);
          },
          elevation: 20.0,
          child: Center(
            child: Image(
              image: AssetImage("./assets/images/icon-waveform.png"),
            ),
          ),
          padding: EdgeInsets.all(50.0),
          shape: CircleBorder(),
        ),
        RawMaterialButton(
          onPressed: () {
            Navigator.pushNamed(context, Player.id);
          },
          elevation: 20.0,
          child: Center(
            child: Icon(
              FontAwesomeIcons.play,
              color: Colors.white,
              size: 50,
            ),
          ),
          padding: EdgeInsets.all(50.0),
          shape: CircleBorder(),
        ),
      ]),
    );
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
                image: new DecorationImage(
                    fit: BoxFit.fill,
                    image:
                        new AssetImage("./assets/images/Highway_To_Hell.jpg"))),
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              color: Colors.black54,
              child: Container(
                  child: Padding(
                padding: EdgeInsets.fromLTRB(30, 350, 30, 10),
                child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height / 8,
                    child: design_stack(context)),
              )),
            ),
          ),
        ],
      ),
    );
  }
}
