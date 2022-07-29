import 'package:flutter/material.dart';
import 'package:portifolio_curriculo/components/hireme_card.dart';
import 'package:portifolio_curriculo/components/section_title.dart';
import 'package:portifolio_curriculo/constants.dart';
import 'package:portifolio_curriculo/models/RecentWork.dart';
import 'package:portifolio_curriculo/sections/recent_work/components/recent_work_card.dart';

class RecentWorkSection extends StatefulWidget {
  const RecentWorkSection({Key? key}) : super(key: key);

  @override
  State<RecentWorkSection> createState() => _RecentWorkSectionState();
}

class _RecentWorkSectionState extends State<RecentWorkSection> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: kDefaultPadding * 6),
      width: double.infinity,
      // height: 700,
      decoration: BoxDecoration(
        color: Colors.black87,
        /*image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage("assets/images/fundo-triangulo-neon.png"),
        ),*/
      ),
      child: Column(
        children: [
          Transform.translate(
            offset: Offset(0, -80),
            child: HireMeCard(),
          ),
          SectionTitle(
            title: "Trabalhos Recentes",
            subTitle: "Minhas areas fortes",
            color: Colors.amberAccent.shade700,
          ),
          SizedBox(height: kDefaultPadding * 1.5),
          Container(
            width: 1210,
            padding: EdgeInsets.only(
              left: kDefaultPadding * 2,
              right: kDefaultPadding,
            ),
            child: Wrap(
              spacing: kDefaultPadding * 1.5,
              runSpacing: kDefaultPadding * 2,
              children: List.generate(
                  recentWorks.length,
                  (index) => RecentWorkCard(
                        index: index,
                        press: () {},
                      )),
            ),
          ),
          SizedBox(height: kDefaultPadding * 4),
        ],
      ),
    );
  }
}
