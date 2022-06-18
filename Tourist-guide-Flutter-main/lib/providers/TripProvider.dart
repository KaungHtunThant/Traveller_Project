
import 'package:flutter/material.dart';
import 'package:tourist_guide/models/trip.dart';

import '../app_data.dart.bak';

class TripProvider with ChangeNotifier {
  List<Trip> Categoryfilter = [];
  Trip trip;
  final List<Trip> TripList = [
    Trip(
        id: 'm1',
        categories: [
          'ygn',
        ],
        title: 'Shwedagone',
        imageUrl: 'https://image.jimcdn.com/app/cms/image/transf/none/path/sa5da3ad6a208eec6/backgroundarea/i056862cfc4b2651d/version/1600946425/image.jpg',
        activities: [
          'Eat',
          'Sleep',
          'Code',
          'Game',
          'Party'
        ],
        program: [
          'Eat',
          'Sleep',
          'Code',
          'Game',
          'Party'
        ],
        duration: 10,
        season: Season.Summer,
        tripType: TripType.Exploration,
        isInSummer: true,
        isInWinter: true,
        isForFamilies: true
    ),
    Trip(
        id: 'm2',
        categories: [
          'ygn',
        ],
        title: 'Inya Lake',
        imageUrl: 'https://image.jimcdn.com/app/cms/image/transf/none/path/sa5da3ad6a208eec6/backgroundarea/i056862cfc4b2651d/version/1600946425/image.jpg',
        activities: [
          'Eat',
          'Sleep',
          'Code',
          'Game',
          'Party'
        ],
        program: [
          'Eat',
          'Sleep',
          'Code',
          'Game',
          'Party'
        ],
        duration: 10,
        season: Season.Summer,
        tripType: TripType.Exploration,
        isInSummer: true,
        isInWinter: true,
        isForFamilies: true
    ),

    Trip(
        id: 'm3',
        categories: [
          'ygn',
        ],
        title: 'Myaynigone',
        imageUrl: 'https://image.jimcdn.com/app/cms/image/transf/none/path/sa5da3ad6a208eec6/backgroundarea/i056862cfc4b2651d/version/1600946425/image.jpg',
        activities: [
          'Eat',
          'Sleep',
          'Code',
          'Game',
          'Party'
        ],
        program: [
          'Eat',
          'Sleep',
          'Code',
          'Game',
          'Party'
        ],
        duration: 10,
        season: Season.Summer,
        tripType: TripType.Exploration,
        isInSummer: true,
        isInWinter: true,
        isForFamilies: true
    ),
    Trip(
        id: 'm4',
        categories: [
          'kachin',
        ],
        title: 'Myit Kyi Nar',
        imageUrl: 'https://image.jimcdn.com/app/cms/image/transf/none/path/sa5da3ad6a208eec6/backgroundarea/i056862cfc4b2651d/version/1600946425/image.jpg',
        activities: [
          'Eat',
          'Sleep',
          'Code',
          'Game',
          'Party'
        ],
        program: [
          'Eat',
          'Sleep',
          'Code',
          'Game',
          'Party'
        ],
        duration: 10,
        season: Season.Summer,
        tripType: TripType.Exploration,
        isInSummer: true,
        isInWinter: true,
        isForFamilies: true
    ),
    Trip(
        id: 'm5',
        categories: [
          'c5',
        ],
        title: 'Test5',
        imageUrl: 'https://image.jimcdn.com/app/cms/image/transf/none/path/sa5da3ad6a208eec6/backgroundarea/i056862cfc4b2651d/version/1600946425/image.jpg',
        activities: [
          'Eat',
          'Sleep',
          'Code',
          'Game',
          'Party'
        ],
        program: [
          'Eat',
          'Sleep',
          'Code',
          'Game',
          'Party'
        ],
        duration: 10,
        season: Season.Summer,
        tripType: TripType.Exploration,
        isInSummer: true,
        isInWinter: true,
        isForFamilies: true
    ),
    Trip(
        id: 'm6',
        categories: [
          'c6',
        ],
        title: 'Test6',
        imageUrl: 'https://image.jimcdn.com/app/cms/image/transf/none/path/sa5da3ad6a208eec6/backgroundarea/i056862cfc4b2651d/version/1600946425/image.jpg',
        activities: [
          'Eat',
          'Sleep',
          'Code',
          'Game',
          'Party'
        ],
        program: [
          'Eat',
          'Sleep',
          'Code',
          'Game',
          'Party'
        ],
        duration: 10,
        season: Season.Summer,
        tripType: TripType.Exploration,
        isInSummer: true,
        isInWinter: true,
        isForFamilies: true
    ),
  ];

  Future<void> filterTrip(String id) async {
    if (Categoryfilter.isNotEmpty) {
      Categoryfilter.clear();
    }

    try {
      Categoryfilter = TripList.where((element) {
        return element.categories.contains(id);
      }).toList();
    } catch (e) {
      print(e);
    }
  }

  Trip Tripdidtalse(String id) {
    if (trip != null) {
      trip = null;
    }
    try {
      for (var i = 0; i < TripList.length; i++) {
        if (TripList[i].id.contains(id)) {
          trip = TripList[i];
        }
      }

      return trip;
    } catch (e) {
      print(e);
    }
  }

  void Tripdelete(String id) {
    TripList.removeWhere((element) => element.id == id);
    notifyListeners();

    print("done");
  }

  Future<void> filters(bool summer, bool wernter, bool famliy) {
    if (summer == true && wernter == false && famliy == false) {
      TripList.removeWhere((element) => element.season==Season.Winter);
      TripList.removeWhere((element) => element.isForFamilies);
    } else if (summer == false && wernter == true && famliy == false) {
      TripList.removeWhere((element) => element.isInSummer );
      TripList.removeWhere((element) => element.isForFamilies == true);
    } else if (summer == false && wernter == false && famliy ) {
      TripList.removeWhere((element) => element.isInSummer );
      TripList.removeWhere((element) => element.isInWinter);
    }
  }
}
