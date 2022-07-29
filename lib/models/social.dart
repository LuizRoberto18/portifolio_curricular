import 'package:flutter/material.dart';
import 'package:portifolio_curriculo/constants.dart';

class Social {
  final String iconSrc, name;
  final String? url;
  final int? id;
  final Color color;

  Social({
    this.id,
    required this.iconSrc,
    required this.name,
    required this.color,
    this.url,
  });
}

List<Social> socialWebs = [
  Social(
    id: 1,
    iconSrc: "assets/images/icons-github.png",
    name: "GitHub",
    color: Colors.black87,
    url: "https://www.github.com/LuizRoberto18",
  ),
  Social(
    id: 2,
    iconSrc: "assets/images/icons-linkedin.png",
    name: "Linkedin",
    color: Colors.blue,
    url: "https://www.linkedin.com/in/luiz-roberto-4161911b8/",
  ),
  Social(
    id: 3,
    iconSrc: "assets/images/icons-whatsapp.png",
    name: "Whatsapp",
    color: Colors.green,
    url:
        "https://api.whatsapp.com/send?phone=+5582987310779&text=Olá%tudo%bem?",
  ),
  Social(
    id: 4,
    iconSrc: "assets/images/icons-gmail.png",
    name: "E-mail",
    color: Colors.red,
  ),
];
