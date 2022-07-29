import 'package:flutter/material.dart';

import '../../../constants.dart';

class ExperienceCard extends StatelessWidget {
  const ExperienceCard({
    Key? key,
    required this.numOfExp,
  }) : super(key: key);
  final String numOfExp;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: kDefaultPadding),
      padding: EdgeInsets.all(kDefaultPadding),
      height: 240,
      width: 240,
      decoration: BoxDecoration(
        gradient: kDefaultGradiente,
        borderRadius: BorderRadius.circular(10),
      ),
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 145, 5, 150).withOpacity(0.8),
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              offset: Offset(0, 10),
              blurRadius: 10,
              color: Color.fromARGB(255, 44, 1, 44),
            )
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              children: [
                Text(
                  numOfExp,
                  style: TextStyle(
                    fontSize: 102,
                    fontWeight: FontWeight.bold,
                    foreground: Paint()
                      ..style = PaintingStyle.stroke
                      ..strokeWidth = 5
                      ..color = Color.fromARGB(255, 41, 2, 43).withOpacity(0.5),
                    shadows: [
                      BoxShadow(
                        offset: Offset(0, 5),
                        blurRadius: 10,
                        color:
                            Color.fromARGB(255, 242, 1, 255).withOpacity(0.6),
                      ),
                    ],
                  ),
                ),
                Text(
                  numOfExp,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 100,
                      color: Colors.white),
                ),
              ],
            ),
            SizedBox(height: kDefaultPadding / 2),
            Text(
              "Anos de experiência",
              style: TextStyle(
                color: Color.fromARGB(255, 242, 1, 255),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
