import 'package:flutter/material.dart';

class BaseboardSection extends StatefulWidget {
  const BaseboardSection({Key? key}) : super(key: key);

  @override
  State<BaseboardSection> createState() => _BaseboardSectionState();
}

class _BaseboardSectionState extends State<BaseboardSection> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 200,
      child: Row(
        children: [
          Column(children: [
            Text("Copyright 2022"),
          ],),
        ],
      ),
    );
  }
}
