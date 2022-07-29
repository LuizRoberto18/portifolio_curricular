import 'package:flutter/material.dart';
import 'package:portifolio_curriculo/components/section_title.dart';
import 'package:portifolio_curriculo/constants.dart';
import 'package:portifolio_curriculo/models/Service.dart';
import 'package:portifolio_curriculo/sections/service/components/service_card.dart';

class ServiceSection extends StatefulWidget {
  const ServiceSection({Key? key}) : super(key: key);

  @override
  State<ServiceSection> createState() => _ServiceSectionState();
}

class _ServiceSectionState extends State<ServiceSection> {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      constraints: BoxConstraints(maxHeight: 600, minHeight: 400),
      width: double.infinity,
      child: Container(
        margin: EdgeInsets.symmetric(vertical: kDefaultPadding * 2),
        constraints: BoxConstraints(maxWidth: 1110),
        child: Column(
          children: [
            SectionTitle(
              title: "Serviços oferecidos",
              subTitle: "Minhas areas mais fortes",
              color: Colors.purple.shade400,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: List.generate(
                services.length,
                (index) => ServiceCard(index: index),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
