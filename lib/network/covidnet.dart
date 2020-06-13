import 'dart:convert';

import 'package:covid19/util/coviddata.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';

class Network{
  Future<covid> getCovidData({String countryName}) async{
    var fianlUrl="https://corona.lmao.ninja/v2/countries/"+countryName;
    final response = await get(Uri.encodeFull(fianlUrl));
    print("URL: ${Uri.encodeFull(fianlUrl)}");

    if(response.statusCode==200){
      print("Weather Forecat data : ${response.body}");
      return covid.fromJson(json.decode(response.body));
    }else{
      throw Exception("Error getting weather Forecat");
    }



  }

}