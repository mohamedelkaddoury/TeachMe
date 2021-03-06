import 'package:flutter/animation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_one/swahili_screen/silabi_screen.dart';
import 'task-form.dart';
import 'package:flutter_one/swahili_screen/irabu_screen.dart';
import 'package:flutter_one/swahili_screen/maneno_screen.dart';
import 'package:flutter_one/swahili_screen/silabi_maneno.dart';

class Tasks extends StatefulWidget {
  @override
  _TasksState createState() => _TasksState();
}

class _TasksState extends State<Tasks> {
  //List<Todo> list = List<Todo>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MainContainer(),
    );
  }
}


class MainContainer extends StatefulWidget {
  @override
  _MainContainerState createState() => _MainContainerState();
}

class _MainContainerState extends State<MainContainer> with SingleTickerProviderStateMixin {


  @override
  Widget build(BuildContext context) {
    double centerheight = MediaQuery.of(context).size.height / 6;
    double widthCOntainer = MediaQuery.of(context).size.width;
    double containerWidth = MediaQuery.of(context).size.width / 3;
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/background.png"),
          fit: BoxFit.fitWidth,
        )
      ),
      child: CustomScrollView(
        slivers: <Widget>[
          SliverList(
            delegate: SliverChildListDelegate([
              Column(
                children: <Widget>[
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        GestureDetector(
                          onTap: (){

                            Navigator.push(context, MaterialPageRoute(builder: (context) => IrabuScreen()) );
                          },
                          // ignore: non_constant_identifier_names
                          onTapUp: (TapUpDetails){
                            setState(() {
                              colorsIrabu = Colors.white;
                            });
                          },
                          // ignore: non_constant_identifier_names
                          onTapDown: (TapDownDetails){
                            setState(() {
                              colorsIrabu = Colors.blue[300];
                            });
                          },
                          child: Container(
                            width: widthCOntainer / 2.4,
                            height: 90,
                            margin: EdgeInsets.symmetric(horizontal: 14, vertical: 10),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                color: colorsIrabu,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black26,
                                    offset: Offset(1, 10),
                                    blurRadius: 9,
                                  ),
                                ],
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: <Widget>[
                                Container(
                                  width: containerWidth,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Text("Irabu", style: TextStyle(color: Colors.white, fontFamily: 'Comic', fontSize: 30, fontWeight: FontWeight.bold),),
                                      Text("Jifunze Irabu", style: TextStyle(fontFamily: 'comic', color: Colors.grey[200]),),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),

                        //Another COntainer
                        GestureDetector(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context) => ManenoScreen()));
                          },
                          // ignore: non_constant_identifier_names
                          onTapUp: (TapUpDetails){
                            setState(() {
                              colorManeno = Colors.white;
                            });
                          },
                          // ignore: non_constant_identifier_names
                          onTapDown: (TapDownDetails){
                            setState(() {
                              colorManeno = Colors.blue[300];
                            });
                          },
                          child: Container(
                            width: widthCOntainer / 2.4,
                            height: 90,
                            margin: EdgeInsets.symmetric(horizontal: 14, vertical: 10),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                color: colorManeno,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black26,
                                    offset: Offset(1, 10),
                                    blurRadius: 9,
                                  ),
                                ]
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: <Widget>[
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Text("Maneno", style: TextStyle(color: Colors.white, fontFamily: 'Comic', fontSize: 30, fontWeight: FontWeight.bold),),
                                    Text("maneno ya Irabu", style: TextStyle(fontFamily: 'comic', color: Colors.grey[200],),),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  //AAnother Container


                  //Silabi Container Follows here

                  GestureDetector(
                    onTap: (){
                      print("Silabi Container Clicked");
                      Navigator.push(context, MaterialPageRoute(builder: (context) => SilabiScreen()));
                    },
                      // ignore: non_constant_identifier_names
                      onTapUp: (TapUpDetails){
                        setState(() {
                          colorSIlabi = Colors.white;
                        });
                      },
                      // ignore: non_constant_identifier_names
                      onTapDown: (TapDownDetails){
                        setState(() {
                          colorSIlabi = Colors.blue[300];
                        });
                      },
                    child: Container(
                      width: widthCOntainer,
                      margin: EdgeInsets.symmetric(horizontal: 14, vertical: 10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: colorSIlabi,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black26,
                              offset: Offset(1, 12),
                              blurRadius: 9,
                            ),
                          ]
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          Container(
                            height: 80,
                            width: 80,
                            child: Image.asset('assets/aeiou.png'),
                          ),
                          Column(
                            children: <Widget>[
                              Text("Silabi", style: TextStyle(color: Colors.brown, fontFamily: 'Comic', fontSize: 30, fontWeight: FontWeight.bold),),
                              Text("Jifunze silabi", style: TextStyle(fontFamily: 'comic',),),
                            ],
                          ),
                          Container(
                            width: 80,
                            child: IconButton(
                              icon: Icon(Icons.sentiment_very_satisfied, color: Colors.pink),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  //maneno ya silabi container

                  GestureDetector(
                    onTap: (){
                      print("Silabi Maneno Clicked");
                      Navigator.push(context, MaterialPageRoute(builder: (context) => SilabiManeno()));
                    },
                    // ignore: non_constant_identifier_names
                    onTapUp: (TapUpDetails){
                      setState(() {
                        colorManenoSilabi = Colors.white;
                      });
                    },
                    // ignore: non_constant_identifier_names
                    onTapDown: (TapDownDetails){
                      setState(() {
                        colorManenoSilabi = Colors.blue[300];
                      });
                    },
                    child: Container(
                      width: widthCOntainer,
                      margin: EdgeInsets.symmetric(horizontal: 14, vertical: 10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: colorManenoSilabi,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black26,
                              offset: Offset(1, 2),
                              blurRadius: 8,
                            ),
                          ]
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          Container(
                            height: 80,
                            width: 80,
                            child: Image.asset('assets/aeiou.png'),
                          ),
                          Column(
                            children: <Widget>[
                              Text("Maneno", style: TextStyle(color: Colors.brown, fontFamily: 'Comic', fontSize: 30, fontWeight: FontWeight.bold),),
                              Text("Jifunze maneno ya silabi", style: TextStyle(fontFamily: 'comic',),),
                            ],
                          ),

                          Container(
                            width: 80,
                            child: IconButton(
                              icon: Icon(Icons.sentiment_very_satisfied, color: Colors.lightBlueAccent,),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ]),
          ),

        ],
      ),
    );
  }
}