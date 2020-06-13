import 'package:covid19/util/coviddata.dart';
import 'package:flutter/material.dart';

class gridview2 extends StatelessWidget {
  final AsyncSnapshot<covid> snapshot;

  const gridview2({Key key, this.snapshot}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            height: 100,
            width: 150,
            child: Card(
              elevation: 0,
              color: Colors.red.shade200,
              child: Column(
                children: [
                  Center(child: Padding(
                    padding: const EdgeInsets.only(top: 18,bottom: 6),
                    child: Text("Total ActiveCases",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),),
                  )),
                  Center(child: Padding(
                    padding: const EdgeInsets.only(top: 12,bottom: 6),
                    child: Text(snapshot.data.active.toString()),
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
              color: Colors.lightBlue.shade100,
              child: Column(
                children: [
                  Center(child: Padding(
                    padding: const EdgeInsets.only(top: 18,bottom: 6),
                    child: Text("Total Recovered",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),),
                  )),
                  Center(child: Padding(
                    padding: const EdgeInsets.only(top:12.0,bottom: 6),
                    child: Text(snapshot.data.recovered.toString()),
                  ))

                ],
              )
            ),
          ),

        ],
      ),
    );
  }
}
