import 'package:covid19/ui/covidinfo.dart';
import 'package:covid19/ui/covidmain.dart';
import 'package:covid19/ui/mainpage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Preventions extends StatefulWidget {
  @override
  _PreventionsState createState() => _PreventionsState();
}

class _PreventionsState extends State<Preventions> {
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

      drawer:  Container(

        width: MediaQuery.of(context).size.width * 0.55,


        child: Drawer(

          child: ListView(
            padding: EdgeInsets.only(top: 70),
            children: [

              ListTile(
                leading: Icon(Icons.assistant),
                title: Text("Covid Statastics"),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => covidApp()));

                },
              ),
              ListTile(
                leading: Icon(Icons.all_inclusive),
                title: Text("Covid info"),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => covidinfo()));

                },

              ),
              ListTile(
                leading: Icon(Icons.check_circle_outline),
                title: Text("Covid Measures"),
//                onTap: (){
//                  Navigator.push(context, MaterialPageRoute(builder: (context) => Preventions()));
//
//                },

              ),
            ],
          ),
        ),
      ),
      body: ListView(
        children: [
          Card(
            child: Container(

              height: 200,
              width: MediaQuery.of(context).size.width,

              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("images/prevention.jpg"),
                  fit: BoxFit.fitWidth,
                  alignment: Alignment.topCenter,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Symptoms",style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold
            ),),
          ),
          Container(

            margin: EdgeInsets.only(top: 10,bottom: 20),
            height: 153.0,

            child: ListView(
              // This next line does the trick.
              scrollDirection: Axis.horizontal,
              children: <Widget>[

                SizedBox(width: 5),
                Container(
                  width: 160.0,
                  child: Column(
                    children: [
                      Image.asset('images/1.png',
                        height: 120,
                        width: 120,
                        fit: BoxFit.fitHeight,),
                      SizedBox(height: 10 ),
                      Text("Fever",style: TextStyle(
                        fontSize: 18,
                      ),),
                    ],
                  ),

                ),

                Container(
                  width: 160.0,
                  child: Column(
                    children: [
                      Image.asset('images/2.png',
                        height: 120,
                        width: 120,
                        fit: BoxFit.fitHeight,),
                      SizedBox(height: 10 ),
                      Text("cough",style: TextStyle(
                        fontSize: 18
                      ),),
                    ],
                  ),

                ),

                Container(
                  width: 160.0,
                  child: Column(
                    children: [
                      Image.asset('images/3.png',
                        height: 120,
                        width: 120,
                        fit: BoxFit.fitHeight,),
                      SizedBox(height: 10 ),
                      Text("HeadAche",style: TextStyle(
                        fontSize: 18
                      ),),
                    ],
                  ),

                ),

                Container(
                  width: 160.0,
                  child: Column(
                    children: [
                      Image.asset('images/4.png',
                        height: 120,
                        width: 120,
                        fit: BoxFit.fitHeight,),
                      SizedBox(height: 10 ),
                      Text("cold",style: TextStyle(
                        fontSize: 18
                      ),),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Preventions",style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold
            ),),
          ),
          Container(

            margin: EdgeInsets.only(top: 10,bottom: 20),
            height: 153.0,

            child: ListView(
              // This next line does the trick.
              scrollDirection: Axis.horizontal,
              children: <Widget>[

                SizedBox(width: 5),
                Container(
                  width: 160.0,
                  child: Column(
                    children: [
                      Image.asset('images/earth.png',
                        height: 120,
                        width: 120,
                        fit: BoxFit.fitHeight,),
                      SizedBox(height: 10 ),
                      Text("Wear a mask",style: TextStyle(
                        fontSize: 18,
                      ),),
                    ],
                  ),

                ),

                Container(
                  width: 160.0,
                  child: Column(
                    children: [
                      Image.asset('images/l3.jpg',
                        height: 120,
                        width: 120,
                        fit: BoxFit.fitHeight,),
                      SizedBox(height: 10 ),
                      Text("consult doctor",style: TextStyle(
                          fontSize: 18
                      ),),
                    ],
                  ),

                ),

                Container(
                  width: 160.0,
                  child: Column(
                    children: [
                      Image.asset('images/a4.png',
                        height: 120,
                        width: 120,
                        fit: BoxFit.fitHeight,),
                      SizedBox(height: 10 ),
                      Text("Cover While you Cough",style: TextStyle(
                          fontSize: 15
                      ),),
                    ],
                  ),

                ),

                Container(
                  width: 160.0,
                  child: Column(
                    children: [
                      Image.asset('images/a6.png',
                        height: 120,
                        width: 120,
                        fit: BoxFit.fitHeight,),
                      SizedBox(height: 10 ),
                      Text("Sanitize Yourself",style: TextStyle(
                          fontSize: 18
                      ),),
                    ],
                  ),
                ),
                Container(
                  width: 160.0,
                  child: Column(
                    children: [
                      Image.asset('images/a8.png',
                        height: 120,
                        width: 150,
                        fit: BoxFit.fitHeight,),
                      SizedBox(height: 10 ),
                      Text("Maintain Distance",style: TextStyle(
                          fontSize: 18
                      ),),
                    ],
                  ),

                ),
                Container(
                  width: 160.0,
                  child: Column(
                    children: [
                      Image.asset('images/a10.png',
                        height: 120,
                        width: 120,
                        fit: BoxFit.fitHeight,),
                      SizedBox(height: 10 ),
                      Text("Washing Hands",style: TextStyle(
                          fontSize: 18
                      ),),
                    ],
                  ),

                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
