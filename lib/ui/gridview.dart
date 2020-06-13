import 'package:covid19/util/coviddata.dart';
import 'package:flutter/material.dart';

class gridView extends StatelessWidget {
  final AsyncSnapshot<covid> snapshot;

  const gridView({Key key, this.snapshot}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(15.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            height: 100,
            width: 150,
            child: Card(
              elevation: 0,
              color: Colors.orange.shade200,
              child: Column(
                children: [
                  Center(child: Padding(
                    padding: const EdgeInsets.only(top: 18,bottom: 6),
                    child: Text("Total Cases",
                      style: TextStyle(
                      fontWeight: FontWeight.bold,
                        fontSize: 18,
                    ),),
                  )),
                  Center(child: Padding(
                    padding: const EdgeInsets.only(top: 12,bottom: 6),
                    child: Text(snapshot.data.cases.toString()),
                  ))

                ],
              )
            ),
          ),
          Container(
            height: 100,
            width: 150,
            child: Card(
              elevation: 0,
              color: Colors.lightGreen.shade200,
              child: Column(
                children: [
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 18,bottom: 5),
                      child: Text("Total deaths",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),),
                    ),
                  ),
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 12,bottom: 6),
                      child: Text(snapshot.data.deaths.toString()),
                    ),
                  ),
                ],
              )

            ),
          ),
        ],
      ),
    );
  }
}
