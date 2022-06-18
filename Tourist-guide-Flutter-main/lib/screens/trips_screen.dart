import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tourist_guide/models/trip.dart';
import 'package:tourist_guide/providers/TripProvider.dart';

class tripsScreen extends StatelessWidget {
  final String id;
  // final String description;
  tripsScreen(this.id,);
  int count = 0;
  @override
  Widget build(BuildContext context) {
    Trip trip = Provider.of<TripProvider>(
      context,
    ).Tripdidtalse(id);

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(trip.title != null ? trip.title : ""),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.fromLTRB(0, 0, 0, 40.0),
          child: Column(
            children: [
              Image.network(
                trip.imageUrl,
                height: 260,
                width: double.infinity,
                fit: BoxFit.fill,
              ),
              Container(
                padding: EdgeInsets.all(20),
                child: Text(
                  "Description",
                  style: Theme.of(context).textTheme.headline5,
                ),
                alignment: Alignment.centerLeft,
              ),
              Container(
                constraints: BoxConstraints(
                  maxHeight: double.infinity,
                ),
                height: 500,
                width: 370,
                padding: const EdgeInsets.all(15.0),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(color: Colors.blueAccent)),
                // child: ListView(
                //   children: trip.activities.map((e) {
                //     return Column(
                //       crossAxisAlignment: CrossAxisAlignment.start,
                //       children: [
                //         Text(
                //           e,
                //         ),
                //         Divider()
                //       ],
                //     );
                //   }).toList(),
                // ),
                child: Text(
                  trip.description,
                  // textAlign: TextAlign.center,
                ),
              ),
              Container(
                padding: EdgeInsets.all(20),
                child: Text(
                  "Bus Routes",
                  style: Theme.of(context).textTheme.headline5,
                ),
                alignment: Alignment.centerLeft,
              ),
              Container(
                height: 300,
                width: 370,
                padding: const EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(color: Colors.blueAccent)),
                child: ListView(
                  children: trip.program.map((e) {
                    count++;
                    return Column(
                      children: [
                        ListTile(

                          leading: Container(
                            width: 50,
                            height: 50,
                            child: Center(child: Text("Bus $count")),
                            decoration: BoxDecoration(
                              color: Theme.of(context).accentColor,
                              borderRadius: BorderRadius.circular(90),
                            ),
                          ),
                          title: Text(
                            e,
                          ),
                        ),
                        Divider(),
                      ],
                    );
                  }).toList(),
                ),
              ),
            ],
          )

        ),
      ),
      // floatingActionButton: FloatingActionButton(
      //   child: Icon(Icons.delete),
      //   onPressed: () {
      //
      //
      //       Navigator.of(context).pop(id);
      //
      //   },
      // ),
    );
  }
}
