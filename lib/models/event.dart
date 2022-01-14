import 'dart:convert';

import 'package:equatable/equatable.dart';

class Event extends Equatable {
  final String? title;
  final String? place;
  final String? about;
  final double? ratting;
  final double? distance;
  final List<String?> peopleAttending;
  final String? image;

  const Event({
    required this.title,
    required this.place,
    required this.about,
    required this.ratting,
    required this.distance,
    required this.peopleAttending,
    required this.image,
  });

  Event copyWith({
    String? title,
    String? place,
    String? about,
    double? ratting,
    double? distance,
    List<String?>? peopleAttending,
    String? image,
  }) {
    return Event(
      title: title ?? this.title,
      place: place ?? this.place,
      about: about ?? this.about,
      ratting: ratting ?? this.ratting,
      distance: distance ?? this.distance,
      peopleAttending: peopleAttending ?? this.peopleAttending,
      image: image ?? this.image,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'title': title,
      'place': place,
      'about': about,
      'ratting': ratting,
      'distance': distance,
      'peopleAttending': peopleAttending,
      'image': image,
    };
  }

  factory Event.fromMap(Map<String, dynamic> map) {
    return Event(
      title: map['title'],
      place: map['place'],
      about: map['about'],
      ratting: map['ratting']?.toDouble() ?? 0.0,
      distance: map['distance']?.toDouble() ?? 0.0,
      peopleAttending: List<String?>.from(map['peopleAttending']),
      image: map['image'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Event.fromJson(String source) => Event.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Event(title: $title, place: $place, about: $about, ratting: $ratting, distance: $distance, peopleAttending: $peopleAttending, image: $image)';
  }

  @override
  List<Object?> get props {
    return [
      title,
      place,
      about,
      ratting,
      distance,
      peopleAttending,
      image,
    ];
  }
}
