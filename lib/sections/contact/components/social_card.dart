import 'dart:isolate';

import 'package:flutter/material.dart';
import 'package:portifolio_curriculo/models/Service.dart';
import 'package:portifolio_curriculo/models/social.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../constants.dart';
import '../../../models/social.dart';

class SocialCard extends StatefulWidget {
  final int? index;
  const SocialCard({
    Key? key,
    this.index,
  }) : super(key: key);

  @override
  State<SocialCard> createState() => _SocialCardState();
}

class _SocialCardState extends State<SocialCard> {
  bool isHover = false;

  void messageDialog(BuildContext context, String imagem) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return SingleChildScrollView(
          child: AlertDialog(
            title: Container(
              height: 550,
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
    if (await canLaunchUrl(url)) {
      await launchUrl(url);
    } else {
      return messageDialog(context,
          "Não é possivel contactar $url no momento, verifique sua internet ou tente mais tarde.");
    }
  }

  Future<void> abrirGmail(
    BuildContext context,
  ) async {
    final Uri params = Uri(
      scheme: 'mailto',
      path: 'passageiro1829@gmail.com',
      query: 'subject=Reportar&body=Detalhe aqui o assunto a ser tratado: ',
    );
    String gmailUrl = params.toString();
    if (await canLaunchUrl(Uri.parse(gmailUrl))) {
      await launchUrl(Uri.parse(gmailUrl));
    } else {
      return messageDialog(context,
          "Não é possivel contactar o E-mail no momento, verifique sua internet ou tente mais tarde.");
    }
  }

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      child: InkWell(
        onTap: () {
          if (socialWebs[widget.index!].id != 4) {
            linkContatos(context, Uri.parse(socialWebs[widget.index!].url!));
          } else {
            abrirGmail(context);
          }
        },
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
            color: socialWebs[widget.index!].color,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [if (isHover) kDefaultCardShadow],
          ),
          child: Row(
            children: [
              Image.asset(
                socialWebs[widget.index!].iconSrc,
                height: 50,
                width: 50,
                fit: BoxFit.cover,
              ),
              SizedBox(width: kDefaultPadding),
              Text(
                socialWebs[widget.index!].name,
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
