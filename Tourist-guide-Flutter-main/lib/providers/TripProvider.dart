
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
        description:'''Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime mollitia, molestiae quas vel sint commodi repudiandae consequuntur voluptatum laborum numquam blanditiis harum quisquam eius sed odit fugiat iusto fuga praesentium optio, eaque rerum! Provident similique accusantium nemo autem. Veritatis obcaecati tenetur iure eius earum ut molestias architecto voluptate aliquam nihil, eveniet aliquid culpa officia aut! Impedit sit sunt quaerat, odit, tenetur error, harum nesciunt ipsum debitis quas aliquid. Reprehenderit, quia. Quo neque error repudiandae fuga? Ipsa laudantium molestias eos sapiente officiis modi at sunt excepturi expedita sint? Sed quibusdam recusandae alias error harum maxime adipisci amet laborum. Perspiciatis minima nesciunt dolorem! Officiis iure rerum voluptates a cumque velit quibusdam sed amet tempora. Sit laborum ab, eius fugit doloribus tenetur fugiat, temporibus enim commodi iusto libero magni deleniti quod quam consequuntur! Commodi minima excepturi repudiandae velit hic maxime doloremque. Quaerat provident commodi consectetur veniam similique ad earum omnis ipsum saepe, voluptas, hic voluptates pariatur est explicabo fugiat, dolorum eligendi quam cupiditate excepturi mollitia maiores labore suscipit quas? Nulla, placeat. Voluptatem quaerat non architecto ab laudantium modi minima sunt esse temporibus sint culpa, recusandae aliquam numquam totam ratione voluptas quod exercitationem fuga. Possimus quis earum veniam quasi aliquam eligendi, placeat qui corporis!''',
        activities: [],
        program: [
          'Eat',
          'Sleep',
          'Code',
          'Game',
          'Party'
        ],
        duration: '9 AM to 6 PM',
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
        description: '',
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
        duration: '10',
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
        description: '',
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
        duration: '10',
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
        description: '',
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
        duration: '10',
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
