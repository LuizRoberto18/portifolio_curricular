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
            title: "Contate-me",
            subTitle: "Para consulta e informações do projeto",
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
                Row(
                  children: [
                    const Text(
                      "Copyright \u00a9  2022 - By Luiz Roberto",
                      style: TextStyle(
                        color: kTextColor,
                      ),
                    ),
                    const SizedBox(width: 25),
                    Image.asset("assets/images/icons-github.png", height: 40),
                    const SizedBox(width: 5),
                    Image.asset("assets/images/icons-linkedin.png", height: 40),
                    const SizedBox(width: 5),
                    Image.asset("assets/images/icons-whatsapp.png", height: 40),
                    const SizedBox(width: 5),
                    Image.asset("assets/images/icons-gmail.png", height: 40),
                  ],
                ),
                Container(
                  height: 60,
                  width: 100,
                  child: Image.asset(
                    "assets/images/LogoTipo-perfil-branco.png",
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
