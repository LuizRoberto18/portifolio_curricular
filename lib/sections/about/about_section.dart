import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_lorem/flutter_lorem.dart';
import 'package:portifolio_curriculo/components/default_botton.dart';
import 'package:portifolio_curriculo/components/my_text_button.dart';
import '../../constants.dart';
import 'components/about_section_text.dart';
import 'components/about_text_with_sing.dart';
import 'components/experience_card.dart';

class AboutSection extends StatefulWidget {
  const AboutSection({Key? key}) : super(key: key);

  @override
  State<AboutSection> createState() => _AboutSectionState();
}

class _AboutSectionState extends State<AboutSection> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: kDefaultPadding * 2),
      constraints: BoxConstraints(maxWidth: 1110),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              AboutTextWithSign(),
              Expanded(
                child: AboutSectionText(
                  text: lorem(words: 40, paragraphs: 1),
                ),
              ),
              ExperienceCard(
                numOfExp: "10",
              ),
              Expanded(
                child: AboutSectionText(
                  text: lorem(words: 40, paragraphs: 1),
                ),
              ),
            ],
          ),
          SizedBox(height: kDefaultPadding * 2),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MyTextButton(
                  text: "Hire me!",
                  icon: Icons.handshake_rounded,
                  press: () {}),
              SizedBox(width: kDefaultPadding * 1.5),
              DefaultButton(
                  icon: Icons.download, text: "Download CV", press: () {}),
            ],
          ),
        ],
      ),
    );
  }
}
