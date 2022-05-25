import 'package:flutter/material.dart';
import 'package:portifolio_curriculo/constants.dart';

class Service {
  final int? id;
  final String? title, image;
  final Color? color;
  final LinearGradient? gradient;
  Service({this.gradient, this.id, this.title, this.image, this.color});
}

// For demo list of service
List<Service> services = [
  Service(
    id: 1,
    title: "Graphic Design",
    image: "assets/images/logo-design.png",
    gradient: kDefaultGradiente,
  ),
  Service(
    id: 2,
    title: "Web Developer",
    image: "assets/images/logo-front-end.png",
    color: Color.fromARGB(255, 221, 207, 17),
  ),
  Service(
    id: 4,
    title: "Interaction UI UX",
    image: "assets/images/logo-ui-ux.png",
    color: Color.fromARGB(255, 7, 116, 189),
  ),
  Service(
    id: 3,
    title: "Back-End Developer",
    image: "assets/images/logo-back-end.png",
    color: Colors.grey[600],
  ),
];
