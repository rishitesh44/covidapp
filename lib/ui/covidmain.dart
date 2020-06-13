import 'package:covid19/network/covidnet.dart';
import 'package:covid19/ui/covidinfo.dart';
import 'package:covid19/ui/gridview.dart';
import 'package:covid19/ui/gridview2.dart';
import 'package:covid19/ui/mainpage.dart';
import 'package:covid19/ui/preandsymp.dart';
import 'package:covid19/util/coviddata.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

class covidApp extends StatefulWidget {
  @override
  _covidAppState createState() => _covidAppState();
}

class _covidAppState extends State<covidApp> {
  @override
  Future<covid> covidObject;
  String _countryName="india";
  void initState(){
    super.initState();
    covidObject=getCovidData(countryName: _countryName);

//    forcastObject.then((wether){
//      print(wether.city.name);
//    });
  }
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
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Preventions()));

                },
              ),
            ],
          ),
        ),
      ),

      body: ListView(

    children: <Widget>[
      CarouselBulider(),
      textFieldView(),

    Container(
      child: FutureBuilder<covid>(
      future: covidObject,
      builder: (BuildContext context,AsyncSnapshot<covid> snapshot){
        if(snapshot.hasData){
          return Column(
            children: <Widget>[
              Center(
                child: Container(
                  height: 80,
                  width: 130,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(snapshot.data.countryInfo.flag),
                      fit: BoxFit.cover,
                    )
                  ),
                ),
              ),
               gridView(snapshot:snapshot ),
              gridview2(snapshot:snapshot),

            ],
          );
        }else{
          return Container(
            child: Center(
              child: CircularProgressIndicator(
                strokeWidth: 7,
              ),
            ),
          );
        }
      },
    )
    ),


    ],
    ),

    );
  }
  Widget textFieldView() {
    return Padding(

      padding: const EdgeInsets.all(20.0),
      child: Container(
        child: TextField(
          decoration: InputDecoration(
            hintText: "Enter Country Name",
            prefixIcon: Icon(Icons.search),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10)),
            contentPadding: EdgeInsets.all(8),
          ),
          onSubmitted: (value){
            setState(() {
              _countryName=value;
              covidObject=getCovidData(countryName: _countryName);
            });
          },
        ),

      ),
    );
  }
  Widget CarouselBulider() {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: SizedBox(

        height: 200.0,
        width: 150.0,
        child: Card(
          child: Carousel(
            boxFit: BoxFit.fill,
            images: [
              AssetImage('images/covid1.jpg'),
              AssetImage('images/covid2.jpg'),
              AssetImage('images/covid3.jpg'),
              AssetImage('images/covid4.jpg'),
            ],
            autoplayDuration: Duration(seconds: 5),
            showIndicator: false,
            borderRadius: true,
            moveIndicatorFromBottom: 180.0,
            noRadiusForIndicator: true,
            overlayShadow: false,
//              overlayShadowColors: Colors.white,
//              overlayShadowSize: 0.7,
          ),
        ),
      ),
    );
  }

  Future<covid> getCovidData({String countryName}) =>
      new Network().getCovidData(countryName: _countryName);
}

