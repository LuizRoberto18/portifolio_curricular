import 'package:flutter/material.dart';
import 'package:portifolio_curriculo/models/RecentWork.dart';

import '../../../constants.dart';

class RecentWorkCard extends StatefulWidget {
  final int? index;
  final Function? press;
  const RecentWorkCard({
    Key? key,
    this.index,
    this.press,
  }) : super(key: key);

  @override
  State<RecentWorkCard> createState() => _RecentWorkCardState();
}

class _RecentWorkCardState extends State<RecentWorkCard> {
  bool isHover = false;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => widget.press!,
      onHover: (value) {
        setState(() {
          isHover = value;
        });
      },
      child: AnimatedContainer(
        duration: Duration(milliseconds: 200),
        width: 550,
        height: 320,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.horizontal(right: Radius.circular(10)),
          boxShadow: [if (isHover) kDefaultCardShadow],
        ),
        child: Row(
          children: [
            Image.asset(
              recentWorks[widget.index!].image!,
              fit: BoxFit.cover,
              width: 250,
              height: 320,
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(recentWorks[widget.index!].category!.toUpperCase()),
                    SizedBox(height: kDefaultPadding / 2),
                    Text(
                      recentWorks[widget.index!].title!,
                      style: Theme.of(context)
                          .textTheme
                          .headline5!
                          .copyWith(height: 1.5),
                    ),
                    SizedBox(height: kDefaultPadding * 3),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        primary: Colors.amber,
                        fixedSize: Size(250, 25),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: Text(
                        "Mais Detalhes",
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
