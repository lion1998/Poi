import 'package:flutter/material.dart';

import '../widgets/header.dart';

class CategoryPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: HeaderWidget(tag: 'RECENT POSTS', title: 'SPORTS', buttonText: 'SEE ALL',)
    );
  }
}