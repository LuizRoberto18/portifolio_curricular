import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../models/Service.dart';

class ServiceCard extends StatefulWidget {
  const ServiceCard({
    Key? key,
    this.index,
  }) : super(key: key);

  final int? index;
  @override
  State<ServiceCard> createState() => _ServiceCardState();
}

class _ServiceCardState extends State<ServiceCard> {
  bool isHover = false;
  Duration duration = Duration(milliseconds: 200);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      onHover: (value) {
        setState(() {
          isHover = value;
        });
      },
      hoverColor: Colors.transparent,
      child: AnimatedContainer(
        duration: duration,
        margin: EdgeInsets.symmetric(vertical: kDefaultPadding * 2),
        height: isHover ? 270 : 250,
        width: isHover ? 270 : 250,
        decoration: BoxDecoration(
          color: services[widget.index!].color,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [if (isHover) kDefaultCardShadow],
          gradient: services[widget.index!].gradient,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedContainer(
              duration: duration,
              padding: EdgeInsets.all(kDefaultPadding),
              width: 120,
              height: 120,
              decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
                boxShadow: [
                  if (!isHover)
                    BoxShadow(
                      offset: Offset(0, 20),
                      blurRadius: 30,
                      color: Colors.black.withOpacity(0.3),
                    ),
                ],
              ),
              child: Image.asset(
                services[widget.index!].image!,
                fit: BoxFit.fill,
              ),
            ),
            SizedBox(height: kDefaultPadding),
            Text(
              services[widget.index!].title!,
              style: TextStyle(
                fontSize: 22,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
