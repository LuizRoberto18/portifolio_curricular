import 'package:flutter/material.dart';

import '../constants.dart';

class DefaultButton extends StatelessWidget {
  const DefaultButton({
    Key? key,
    required this.text,
    required this.icon,
    required this.press,
  }) : super(key: key);

  final String text;
  final IconData icon;
  final Function press;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 200,
      padding: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
      decoration: BoxDecoration(
        color: Colors.grey,
        borderRadius: BorderRadius.circular(30),
        gradient: kDefaultGradiente,
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 10),
            blurRadius: 10,
            color: Color.fromARGB(146, 3, 0, 3),
          )
        ],
      ),
      child: SizedBox.expand(
        child: FittedBox(
          child: TextButton(
            onPressed: () => press,
            child: Row(
              children: [
                Icon(
                  icon,
                  color: Colors.white,
                  size: 25,
                ),
                SizedBox(
                  width: kDefaultPadding,
                ),
                Text(
                  text,
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
