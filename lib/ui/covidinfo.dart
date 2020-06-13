import 'package:flutter/material.dart';
import 'package:drop_cap_text/drop_cap_text.dart';
import 'dart:async';



final String loremIpsumText =
    "COVID-19 is a serious global infectious disease outbreak with nearly 550,000 cases and around 25,000 deaths worldwide. It is part of a family of viruses called coronaviruses that infect both animals and people. This particular one originated in China at the end of 2019, in the city of Wuhan, which has 11 million residents. In the past two decades coronavirus outbreaks have caused global concern, including one in 2003 with the Severe Acute Respiratory Syndrome (SARS) and more recently in 2012 with the Middle East Respiratory Syndrome (MERS).";

final String Rishitext=
    "IS THERE A TREATMENT OR VACCINE?";
class covidinfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("COVID19"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            children: <Widget>[

              DropCapText(

                loremIpsumText,
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,

                ),
                dropCapPosition: DropCapPosition.end,
                textAlign: TextAlign.justify,
                dropCap: DropCap(
                    width: 120,
                    height: 150,
                    child: Image.asset('images/c1.jpg')),
              ),
              SizedBox(height: 20,),
              Text("IS THERE A TREATMENT OR VACCINE?",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),),
              Container(
                child: Text(
                  "Right now, there are no antivirals or vaccines to treat or prevent COVID-19, although there are at least 44 potential coronavirus vaccines in development. Several antivirals, including those against flu and HIV are being tested to see if they could be used against the new coronavirus, as is chloroquine, a common antimalarial.",
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 15,
                  ),
                ),
              ),
              SizedBox(height: 10,),
              Container(
                child: Text(
                    "Even in an emergency, vaccines can take a long time to develop – no matter how quickly researchers race through the initial phase of identifying candidate vaccines and getting their vaccines into clinical testing. This is because taking the vaccine through the rigorous stages of testing for safety and efficacy can normally take several years. "
                        "And it is still unclear whether the COVID-19 outbreak will have peaked before a vaccine can be rolled-out.",
                  style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 15,
                ),
                ),
              ),

            ],
          ),
        ),
      ),

    );
  }



}