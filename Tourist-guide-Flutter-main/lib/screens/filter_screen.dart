import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tourist_guide/providers/TripProvider.dart';
import 'package:tourist_guide/widgets/drawer.dart';

class FilersScreen extends StatefulWidget {
  @override
  _FilersScreenState createState() => _FilersScreenState();
}

class _FilersScreenState extends State<FilersScreen> {
  var _isInSommer = false;

  var _isInWinter = false;

  var _isInFamily = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("Filter"),
          actions: [
            FlatButton(
              onPressed: () {
                Provider.of<TripProvider>(context, listen: false)
                    .filters(_isInSommer, _isInWinter, _isInFamily);
              },
              child: Text("done"),
            ),
          ],
        ),
        drawer: Drawers(),
        body: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            Expanded(
              child: ListView(
                children: [
                  SwitchListTile(
                    title: Text("Summer Trips"),
                    subtitle: Text("Show trips in Summer only"),
                    value: _isInSommer,
                    onChanged: (newVal) {
                      setState(() {
                        _isInSommer = newVal;
                      });
                    },
                  ),
                  SwitchListTile(
                    title: Text("Winter Trips"),
                    subtitle: Text("Show trips in Winter only"),
                    value: _isInWinter,
                    onChanged: (newVal) {
                      setState(() {
                        _isInWinter = newVal;
                      });
                    },
                  ),
                  SwitchListTile(
                    title: Text("Family Trips"),
                    subtitle: Text("Show Trips for Families only"),
                    value: _isInFamily,
                    onChanged: (newVal) {
                      setState(() {
                        _isInFamily = newVal;
                      });
                    },
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
