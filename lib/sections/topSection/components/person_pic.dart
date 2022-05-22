import 'package:flutter/material.dart';

class PersonPic extends StatelessWidget {
  const PersonPic({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(maxWidth: 730, maxHeight: 910),
      child: Image.asset(
        "assets/images/perfil-top.png",
        height: 800,
        fit: BoxFit.cover,
      ),
    );
  }
}
