import 'package:flutter/material.dart';
import 'package:portifolio_curriculo/models/social.dart';
import 'package:portifolio_curriculo/sections/contact/components/social_card.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../constants.dart';
import 'contact_form.dart';

class ContactBox extends StatefulWidget {
  const ContactBox({
    Key? key,
  }) : super(key: key);

  @override
  State<ContactBox> createState() => _ContactBoxState();
}

class _ContactBoxState extends State<ContactBox> {
  void messageDialog(BuildContext context, String imagem) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return SingleChildScrollView(
          child: AlertDialog(
            title: Container(
              height: 300,
              width: 400,
              child: Image.asset(
                imagem,
                fit: BoxFit.fill,
              ),
            ),
            actions: [
              TextButton(
                onPressed: () => Navigator.of(context).pop(),
                child: Text(
                  "X - Fechar",
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                    shadows: [],
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  Future<void> linkContatos(BuildContext context, Uri url) async {
    //var whatsUrl = "whatsapp://send?phone=+5582987310779&text=Olá, tudo bem?";

    if (await canLaunchUrl(url)) {
      await launchUrl(url);
    } else {
      return messageDialog(context,
          "Não é possivel contactar $url no momento, verifique sua internet ou tente mais tarde.");
    }
  }

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
        left: kDefaultPadding * 3,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [kDefaultCardShadow],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Expanded(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: List.generate(
                      socialWebs.length,
                      (index) => SocialCard(
                            index: index,
                          )),
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
