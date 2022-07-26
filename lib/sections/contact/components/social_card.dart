import 'package:flutter/material.dart';

import '../../../constants.dart';

class SocialCard extends StatefulWidget {
  final String? iconSrc, name;

  final Function press;
  const SocialCard({
    Key? key,
    this.iconSrc,
    this.name,
    required this.press,
  }) : super(key: key);

  @override
  State<SocialCard> createState() => _SocialCardState();
}

class _SocialCardState extends State<SocialCard> {
  bool isHover = false;
  @override
  Widget build(BuildContext context) {
    return FittedBox(
      child: InkWell(
        onTap: () => widget.press,
        onHover: (value) {
          setState(() {
            isHover = value;
          });
        },
        child: AnimatedContainer(
          duration: Duration(milliseconds: 200),
          padding: EdgeInsets.symmetric(
            vertical: kDefaultPadding / 2,
            horizontal: kDefaultPadding * 1.5,
          ),
          decoration: BoxDecoration(
            color: Colors.black54,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [if (isHover) kDefaultCardShadow],
          ),
          child: Row(
            children: [
              Image.asset(
                widget.iconSrc!,
                height: 80,
                width: 80,
                fit: BoxFit.cover,
              ),
              SizedBox(width: kDefaultPadding),
              Text(
                widget.name!,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
