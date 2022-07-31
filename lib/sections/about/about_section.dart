import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_lorem/flutter_lorem.dart';
import 'package:path_provider/path_provider.dart';
import 'package:portifolio_curriculo/components/default_botton.dart';
import 'package:portifolio_curriculo/components/experience_languages.dart';
import 'package:portifolio_curriculo/components/my_text_button.dart';
import 'components/about_section_text.dart';
import 'components/about_text_with_sing.dart';
import 'components/experience_card.dart';
import '../../constants.dart';

class AboutSection extends StatefulWidget {
  const AboutSection({Key? key}) : super(key: key);

  @override
  State<AboutSection> createState() => _AboutSectionState();
}

class _AboutSectionState extends State<AboutSection> {
  Future<String> getFilePath() async {
    Directory appDocumentsDirectory = await getApplicationDocumentsDirectory();
    String appDOcumentsPath = appDocumentsDirectory.path;
    String filePath = '$appDOcumentsPath/Curriculo-Luiz.pdf';

    return filePath;
  }

  Future<void> saveFile() async {
    File file = File(await getFilePath());
    file.writeAsString(
        "This is my demo PDf that will be saved to: Curriculo-Luiz.pdf");
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: kDefaultPadding * 2),
      constraints: BoxConstraints(maxWidth: 1110),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AboutTextWithSign(),
              Expanded(
                child: const AboutSectionText(
                  text:
                      "Luiz Roberto nasceu em Maceió AL, no ano de 1999. Apaixonado por tecnologia desde que iniciou sua trajetória profissional, notou que nasceu para ser um desenvolvedor de software e criador de conteudo.\n\n A publicação do seu primeiro App - MyMoto - na Play story confirma seu sucesso.\n\n Destacando-se pelo seu autocontrole emocional, paciência, ser autodidata, gostar de desafios e aprender coisas novas. Nos momentos offline, Luiz gosta de desenhar, sair para correr a noite e ir ao cinema. Amante do gênero terror.\n\nExperiências:\nJovem aprendiz - Logística | Carajás-2020, Jovem aprendiz - Mobile | Carajás-2022 \n\nFormado:\nTécnico em informática para internet - IFAL-Rio Largo | 2019 e Técnico em administração - Senac | 2022\n\nCursando:\nDesenvolvimento Flutter - Udemy, Desenvolvimento web - Udemy e Design gráfico - Udemy.\n\nContato: passageiro1829@gmail.com",
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ExperienceCard(
                    numOfExp: "3",
                  ),
                  SizedBox(height: 15),
                  Container(
                    width: 320,
                    height: 350,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: const [
                        ExperienceLanguages(
                          text: "Flutter",
                          width: 200,
                        ),
                        ExperienceLanguages(
                          text: "HTML5",
                          width: 170,
                        ),
                        ExperienceLanguages(
                          text: "CSS3",
                          width: 130,
                        ),
                        ExperienceLanguages(
                          text: "Java",
                          width: 90,
                        ),
                        ExperienceLanguages(
                          text: "MySQL",
                          width: 90,
                        ),
                        ExperienceLanguages(
                          text: "JavaScript",
                          width: 85,
                        ),
                        ExperienceLanguages(
                          text: "NodeJs",
                          width: 55,
                        ),
                        ExperienceLanguages(
                          text: "Git",
                          width: 125,
                        ),
                        ExperienceLanguages(
                          text: "Corel Draw",
                          width: 125,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: kDefaultPadding * 2),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MyTextButton(
                  text: "Contrate-me!",
                  icon: Icons.handshake_rounded,
                  press: () {}),
              SizedBox(width: kDefaultPadding * 1.5),
              DefaultButton(
                icon: Icons.download,
                text: "Download CV",
                press: () {
                  print("salvando pdf");
                  saveFile;
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
