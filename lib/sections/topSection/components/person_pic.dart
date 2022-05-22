import 'package:flutter/material.dart';

class PersonPic extends StatelessWidget {
  const PersonPic({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(maxWidth: 630, maxHeight: 1110),
      child: Image.asset(
        "assets/images/perfil-top.png",
      ),
    );
  }
}
