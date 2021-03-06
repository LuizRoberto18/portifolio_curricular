import 'package:flutter/material.dart';
import 'package:portifolio_curriculo/sections/about/about_section.dart';
import 'package:portifolio_curriculo/sections/contact/contact_section.dart';
import 'package:portifolio_curriculo/sections/feedback/feedback_section.dart';
import 'package:portifolio_curriculo/sections/service/service_section.dart';

import '../../../constants.dart';
import '../../recent_work/recent_work_section.dart';

class Menu extends StatefulWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  _MenuState createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  int selectedIndex = 0;
  int hoverIndex = 0;
  List<String> menuItems = [
    "Sobre mim",
    "Serviços",
    "Portfólio",
    "Feedback`s",
    "Contato"
  ];
  List<Widget> sections = [
    AboutSection(),
    ServiceSection(),
    RecentWorkSection(),
    FeedbackSection(),
    ContactSection(),
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: kDefaultPadding * 2.5),
      constraints: BoxConstraints(maxWidth: 1200),
      height: 100,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(14),
          //topRight: Radius.circular(10),
        ),
        boxShadow: [kDefaultShadow],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: List.generate(
          menuItems.length,
          (index) => buildMenuItem(index),
        ),
      ),
    );
  }

  Widget buildMenuItem(int index) => InkWell(
        onTap: () {
          print(sections[selectedIndex]);
          setState(() {
            selectedIndex = index;
          });
        },
        onHover: (value) {
          setState(() {
            value ? hoverIndex = index : hoverIndex = selectedIndex;
          });
        },
        child: Container(
          constraints: BoxConstraints(minWidth: 122),
          height: 100,
          child: Stack(
            alignment: Alignment.center,
            children: [
              Text(
                menuItems[index],
                style: TextStyle(fontSize: 20, color: kTextColor),
              ),
              // Hover
              AnimatedPositioned(
                duration: Duration(milliseconds: 200),
                left: 0,
                right: 0,
                bottom:
                    selectedIndex != index && hoverIndex == index ? -15 : -32,
                child: Image.asset("assets/images/hover.png",
                    height: 32, width: 70),
              ),
              // Select
              AnimatedPositioned(
                duration: Duration(milliseconds: 200),
                left: 0,
                right: 0,
                bottom: selectedIndex == index ? -2 : -32,
                child: Image.asset("assets/images/hover.png",
                    height: 32, width: 70),
              ),
            ],
          ),
        ),
      );
}
