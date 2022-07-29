import 'package:flutter/material.dart';

class Feedback {
  final String? name, review, userPic;
  final int? id;
  final Color? color;

  Feedback({this.name, this.review, this.userPic, this.id, this.color});
}

// List of demo feedbacks
List<Feedback> feedbacks = [
  Feedback(
    id: 1,
    name: "Ronald Thompson",
    review: review,
    userPic: "assets/images/user-model.jpg",
    color: Color.fromARGB(255, 238, 178, 67),
  ),
  Feedback(
    id: 2,
    name: "Ronald Thompson",
    review: review,
    userPic: "assets/images/user-model.jpg",
    color: Color.fromARGB(255, 40, 221, 206),
  ),
  Feedback(
    id: 3,
    name: "Ronald Thompson",
    review: review,
    userPic: "assets/images/user-model.jpg",
    color: Color.fromARGB(255, 243, 46, 46),
  ),
];

String review =
    'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore mag aliqua enim ad minim veniam.';
