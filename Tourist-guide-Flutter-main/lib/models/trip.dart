import 'package:flutter/material.dart';

enum Season {
  Winter,
  Spring,
  Summer,
  Autumn,
}

enum TripType {
  Exploration,
  Recovery,
  Activities,
  Therapy,
}

class Trip {
  final String id;
  final List<String> categories;
  final String title;
  final String imageUrl;
  final String description;
  final List<String> activities;
  final List<String> program;
  final String duration;
  final Season season;
  final TripType tripType;
  final bool isInSummer;
  final bool isInWinter;
  final bool isForFamilies;
  final String location;

  const Trip({
    @required this.id,
    @required this.categories,
    @required this.title,
    @required this.imageUrl,
    @required this.description,
    @required this.activities,
    @required this.program,
    @required this.duration,
    @required this.season,
    @required this.tripType,
    @required this.isInSummer,
    @required this.isInWinter,
    @required this.isForFamilies,
    @required this.location,
  });
}
