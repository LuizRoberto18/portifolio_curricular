import 'package:flutter/material.dart';
import 'package:portifolio_curriculo/components/default_botton.dart';

import '../../../constants.dart';

class ContactForm extends StatelessWidget {
  const ContactForm({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Wrap(
        spacing: kDefaultPadding * 2.5,
        runSpacing: kDefaultPadding * 1.5,
        children: [
          SizedBox(
            width: 470,
            child: TextFormField(
              onChanged: (value) {},
              decoration: InputDecoration(
                labelText: "Seu nome",
                hintText: "Digite seu nome",
              ),
            ),
          ),
          SizedBox(
            width: 470,
            child: TextFormField(
              onChanged: (value) {},
              decoration: InputDecoration(
                labelText: "Endereço de E-mail",
                hintText: "Insira seu endereço de E-mail",
              ),
            ),
          ),
          SizedBox(
            width: 470,
            child: TextFormField(
              onChanged: (value) {},
              decoration: InputDecoration(
                labelText: "Tipo do projeto",
                hintText: "Informe o tipo do projeto",
              ),
            ),
          ),
          SizedBox(
            width: 470,
            child: TextFormField(
              onChanged: (value) {},
              decoration: InputDecoration(
                labelText: "Orçamento do projeto",
                hintText: "valor para o orçamento do projeto",
              ),
            ),
          ),
          SizedBox(
            //  height: 100,
            child: TextFormField(
              onChanged: (value) {},
              decoration: InputDecoration(
                labelText: "Descrição",
                hintText: "Escreva uma descrição",
              ),
            ),
          ),
          SizedBox(height: kDefaultPadding * 2),
          Center(
            child: DefaultButton(
                text: "Contate-me!", icon: Icons.telegram_sharp, press: () {}),
          ),
        ],
      ),
    );
  }
}
