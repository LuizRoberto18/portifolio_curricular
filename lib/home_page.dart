import 'package:flutter/material.dart';
import 'package:portifolio_curriculo/constants.dart';
import 'package:portifolio_curriculo/sections/about/about_section.dart';
import 'package:portifolio_curriculo/sections/contact/contact_section.dart';
import 'package:portifolio_curriculo/sections/feedback/feedback_section.dart';
import 'package:portifolio_curriculo/sections/recent_work/recent_work_section.dart';
import 'package:portifolio_curriculo/sections/service/service_section.dart';
import 'package:portifolio_curriculo/sections/topSection/top_section.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            TopSection(),
            SizedBox(height: kDefaultPadding * 2),
            AboutSection(),
            ServiceSection(),
            RecentWorkSection(),
            FeedbackSection(),
            SizedBox(height: kDefaultPadding),
            ContactSection(),
          ],
        ),
      ),
    );
  }
}
