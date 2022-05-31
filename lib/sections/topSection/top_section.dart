import 'dart:ui';

import 'package:flutter/material.dart';

import '../../constants.dart';
import 'components/logo_blur_box.dart';
import 'components/menu.dart';
import 'components/person_pic.dart';

class TopSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      alignment: Alignment.center,
      margin: EdgeInsets.only(bottom: kDefaultPadding * 4),
      constraints: BoxConstraints(maxHeight: 900, minHeight: 700),
      width: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage("assets/images/fundo-fumaca-neon.png"),
        ),
      ),
      child: Container(
        margin: EdgeInsets.only(top: kDefaultPadding),
        width: 1200,
        child: Stack(
          children: [
            LogoAndBlurBox(size: size),
            Positioned(
              bottom: 0,
              right: 50,
              child: PersonPic(),
            ),
            Positioned(
              bottom: 0,
              child: Transform.translate(
                offset: Offset(0, 35),
                child: Menu(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
