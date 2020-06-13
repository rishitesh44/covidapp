import 'package:covid19/ui/covidinfo.dart';
import 'package:covid19/ui/gridview.dart';
import 'package:covid19/ui/preandsymp.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'covidmain.dart';


class mainPage extends StatefulWidget {
  @override
  _mainPageState createState() => _mainPageState();
}

class _mainPageState extends State<mainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("COVID 19",style: TextStyle(
          color: Colors.black,
        ),),
        backgroundColor: Colors.transparent,
        iconTheme: new IconThemeData(color: Colors.green),
        elevation: 0,
      ),

      body: ListView(
         
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              child: Container(
                height: 160,
                width: 200,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("images/l2.jpg"),
                    fit: BoxFit.fitWidth,
                    alignment: Alignment.topCenter,
                  ),
                ),
              ),

            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left:12.0,right: 12),
            child: InkWell(
              child: Container(
                height: 150,
                width: double.infinity,
                child: Stack(
                  alignment: Alignment.bottomLeft,
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.only(
                        // left side padding is 40% of total width
                        left: MediaQuery.of(context).size.width * .4,
                        top: 20,
                        right: 20,
                      ),
                      height: 130,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            Color(0xFF60BE93),
                            Color(0xFF1B8D59),
                          ],
                        ),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: "Click here to know about covid19",

                            ),

                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5),
                      child: Image.asset("images/e1.png"),
                    ),

                  ],
                ),
              ),
    onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => covidinfo()));

                },
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left:12.0,right: 12),
            child: InkWell(
              child: Container(
                height: 150,
                width: double.infinity,
                child: Stack(
                  alignment: Alignment.bottomLeft,
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.only(
                        // left side padding is 40% of total width
                        left: MediaQuery.of(context).size.width * .4,
                        top: 20,
                        right: 20,
                      ),
                      height: 130,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            Color(0xFFff4d4d),
                            Color(0xFFff3333),
                          ],
                        ),
                        borderRadius: BorderRadius.circular(20),
                      ),

                      child: RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: "Click here to know about covid19 Statastics",

                            ),

                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 1),
                      child: Image.asset("images/e3.png"),
                    ),

                  ],
                ),
              ),
                    onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => covidApp()));

                },
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left:12.0,right: 12),
            child: InkWell(
              child: Container(
                height: 140,
                width: double.infinity,
                child: Stack(
                  alignment: Alignment.bottomLeft,
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.only(
                        // left side padding is 40% of total width
                        left: MediaQuery.of(context).size.width * .4,
                        top: 20,
                        right: 20,
                      ),
                      height: 120,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            Color(0xFF66ffff),
                            Color(0xFF00e6e6),
                          ],
                        ),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: "Click here to know about covid19 Preventions and Symptoms",

                            ),

                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5),
                      child: Image.asset("images/s4.png"),
                    ),

                  ],
                ),
              ),
                    onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Preventions()));

                },
            ),
          ),
        ],
      ),
    );
  }
}

