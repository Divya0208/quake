import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PageOne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        body: Stack(
          children: <Widget>[
            Container(
              width: MediaQuery
                  .of(context)
                  .size
                  .width,
              height: MediaQuery
                  .of(context)
                  .size
                  .height,
              decoration: BoxDecoration(
                  image: new DecorationImage(
                      fit: BoxFit.fill,
                      image: new AssetImage("./assets/images/Highway_To_Hell.jpg")
                  )
              ),
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    //First Button
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Container(
                        width: MediaQuery
                            .of(context)
                            .size
                            .width,
                        height: MediaQuery
                            .of(context)
                            .size
                            .height / 8,
                        child: RaisedButton(
                            color: Color(0xffffffff),
                            child: Container(
                              child:Row(
                                mainAxisAlignment:MainAxisAlignment.spaceEvenly ,
                                children: <Widget>[
                                  Container(child: Icon(
                                    FontAwesomeIcons
                                        .play,
                                    color: new Color(
                                        0xff11b719),
                                    size: 30.0,),),
                                  Padding(
                                    padding: const EdgeInsets.only(left:16.0),
                                    child: Container(child:Text("HIGHWAY TO HELL",
                                      style: TextStyle(
                                        color: new Color(0xff000000),
                                        fontSize: 24.0,
                                      ),),),
                                  ),
                                ],),
                            ),
                            onPressed: () {},
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(
                                    50.0))
                        ),
                      ),
                    ),

                                        //third button


          ],)
              ),),],), );
  }
}