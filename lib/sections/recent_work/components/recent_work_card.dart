import 'package:flutter/material.dart';
import 'package:portifolio_curriculo/models/RecentWork.dart';
import '../../../constants.dart';
import 'package:url_launcher/url_launcher.dart';

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
  bool isWeb = true;
  bool isHover = false;

  void messageDialog(BuildContext context, Widget imagem, double height) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return SingleChildScrollView(
          child: AlertDialog(
            title: Container(
              height: height,
              width: 400,
              child: imagem,
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

//Abrir URL no navegador
  Future<void> abrirSite(String url) async {
    //String url = recentWorks[widget.index!].url!;
    if (await canLaunchUrl(Uri.parse(url))) {
      messageDialog(
          context,
          Center(
            child: Text(
              recentWorks[widget.index!].descricao!,
              style: TextStyle(fontSize: 17),
              textAlign: TextAlign.justify,
            ),
          ),
          400);
      await launchUrl(Uri.parse(url));
    } else {
      return messageDialog(
          context,
          Image.asset(
            recentWorks[widget.index!].url!,
            fit: BoxFit.fill,
          ),
          500);
    }
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        widget.press!;
      },
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
            Container(
              height: 320,
              width: 250,
              child: Image.asset(
                recentWorks[widget.index!].image!,
                fit: BoxFit.cover,
              ),
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
                      onPressed: () {
                        abrirSite(recentWorks[widget.index!].url!);
                      },
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
