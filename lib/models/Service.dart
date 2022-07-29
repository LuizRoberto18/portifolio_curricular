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
    title: "Design Gráfico",
    image: "assets/images/logo-mao-design.png",
    gradient: kDefaultGradiente,
  ),
  Service(
    id: 2,
    title: "Desenvolvedor Web",
    image: "assets/images/logo-front-end.png",
    color: Colors.amber,
  ),
  Service(
    id: 3,
    title: "Interação UI UX",
    image: "assets/images/icons-ui-design.png",
    color: Color.fromARGB(255, 7, 116, 189),
  ),
  Service(
    id: 4,
    title: "Desenvolvedor Back-End",
    image: "assets/images/icons-backend.png",
    color: Color.fromARGB(242, 27, 27, 27),
  ),
];
