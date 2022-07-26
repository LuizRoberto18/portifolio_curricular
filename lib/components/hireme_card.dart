import 'package:flutter/material.dart';
import 'package:portifolio_curriculo/components/my_text_button.dart';

import '../constants.dart';

class HireMeCard extends StatelessWidget {
  const HireMeCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(kDefaultPadding * 2),
      constraints: BoxConstraints(maxWidth: 1110),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [kDefaultCardShadow],
      ),
      child: Row(
        children: [
          Image.asset(
            "assets/images/Envelope.png",
            height: 80,
            width: 80,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
            child: SizedBox(
              height: 80,
              child: VerticalDivider(
                color: Colors.grey[400],
              ),
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Starting new Project?",
                  style: TextStyle(fontSize: 42, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: kDefaultPadding / 2,
                ),
                Text(
                  "Get in estimate for the new project",
                  style: TextStyle(fontWeight: FontWeight.w200),
                ),
              ],
            ),
          ),
          MyTextButton(
              text: "Hire my!", icon: Icons.handshake_rounded, press: () {}),
        ],
      ),
    );
  }
}
