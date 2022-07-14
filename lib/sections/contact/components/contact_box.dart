import 'package:flutter/material.dart';
import 'package:portifolio_curriculo/sections/contact/components/social_card.dart';

import '../../../constants.dart';
import 'contact_form.dart';

class ContactBox extends StatelessWidget {
  const ContactBox({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(maxWidth: 1110),
      margin: EdgeInsets.only(
          top: kDefaultPadding * 2, bottom: kDefaultPadding * 3),
      padding: EdgeInsets.only(
        top: kDefaultPadding * 3,
        right: kDefaultPadding * 3,
        bottom: kDefaultPadding * 3,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [kDefaultCardShadow],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Image.asset(
            "assets/images/contato.jpg",
            height: 500,
            width: 400,
          ),
          Expanded(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SocialCard(
                      color: Colors.grey.shade400,
                      iconSrc: "assets/images/logo-github.png",
                      name: "GitHub",
                      press: () {},
                    ),
                    SocialCard(
                      color: Colors.blue.shade200,
                      iconSrc: "assets/images/logo-linkedin.png",
                      name: "Linkedin",
                      press: () {},
                    ),
                  ],
                ),
                SizedBox(height: kDefaultPadding * 2),
                ContactForm(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
