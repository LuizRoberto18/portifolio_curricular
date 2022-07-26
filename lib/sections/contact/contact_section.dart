import 'package:flutter/material.dart';
import 'package:portifolio_curriculo/components/section_title.dart';

import '../../constants.dart';
import 'components/contact_box.dart';

class ContactSection extends StatefulWidget {
  const ContactSection({Key? key}) : super(key: key);

  @override
  State<ContactSection> createState() => _ContactSectionState();
}

class _ContactSectionState extends State<ContactSection> {
  @override
  Widget build(BuildContext context) {
    return Container(
      //height: 500,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.black87,
        /*image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage("assets/images/bg-orcamento.jpg"),
        ),*/
      ),
      child: Column(
        children: [
          SizedBox(height: kDefaultPadding * 2.5),
          SectionTitle(
            title: "Contact Me",
            subTitle: "For project inquiry and information",
            color: Colors.purple.shade300,
          ),
          const ContactBox(),
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: kDefaultPadding * 10),
            child: Divider(
              color: kTextColor,
              height: 5,
            ),
          ),
          Container(
            height: 100,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const Text(
                  "Copyright \u00a9  2022 - By Luiz",
                  style: TextStyle(
                    color: kTextColor,
                  ),
                ),
                Container(
                  height: 50,
                  width: 100,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Image.asset(
                        "assets/images/icons-github.png",
                      ),
                      Image.asset(
                        "assets/images/icons-linkedin.png",
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
