import 'package:flutter/material.dart';

import '../constants.dart';

class ExperienceLanguages extends StatelessWidget {
  final String text;
  final double width;
  const ExperienceLanguages({Key? key, required this.text, required this.width})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 25,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            text,
            style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
          ),
          Stack(
            children: [
              Container(
                width: 200,
                height: 25,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 233, 232, 232),
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                  border: Border.all(
                    width: 2,
                    color: Color.fromARGB(255, 62, 1, 65),
                  ),
                ),
              ),
              Container(
                width: width,
                height: 25,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 104, 5, 124),
                  borderRadius: BorderRadius.circular(14),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
