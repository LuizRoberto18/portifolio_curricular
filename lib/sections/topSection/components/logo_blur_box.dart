import 'package:flutter/material.dart';
import 'package:portifolio_curriculo/constants.dart';

import 'glass_content.dart';

class LogoAndBlurBox extends StatelessWidget {
  const LogoAndBlurBox({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: kDefaultPadding * 2),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            "assets/images/LogoTipo-perfil-branco.png",
            width: 50,
            height: 50,
          ),
          Spacer(),
          GlassContent(size: size),
          Spacer(flex: 2),
        ],
      ),
    );
  }
}
