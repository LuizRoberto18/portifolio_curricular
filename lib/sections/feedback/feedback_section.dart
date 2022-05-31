import 'package:flutter/material.dart';
import 'package:portifolio_curriculo/components/section_title.dart';
import 'package:portifolio_curriculo/models/feedback.dart';

import '../../constants.dart';
import 'components/feedback_card.dart';

class FeedbackSection extends StatefulWidget {
  const FeedbackSection({Key? key}) : super(key: key);

  @override
  State<FeedbackSection> createState() => _FeedbackSectionState();
}

class _FeedbackSectionState extends State<FeedbackSection> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: kDefaultPadding * 2),
      constraints: BoxConstraints(maxWidth: 1110),
      child: Column(
        children: [
          SectionTitle(
            title: "Feedback Received",
            subTitle: "Client's testimonials that inspired me a lot",
            color: Colors.blue,
          ),
          SizedBox(height: kDefaultPadding),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: List.generate(
              feedbacks.length,
              (index) => FeedbackCard(
                index: index,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
