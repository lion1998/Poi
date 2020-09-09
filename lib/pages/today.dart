import 'package:flutter/material.dart';

import '../widgets/header.dart';

class TodayPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: HeaderWidget(tag: 'RECENT POSTS', title: 'LIFESTYLE', buttonText: 'SEE ALL',)
    );
  }
}