import 'package:flutter/material.dart';
import 'package:flutter_app/widgets/image_text_card.dart';

import '../widgets/header.dart';

class CategoryPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(children: <Widget>[
        HeaderWidget(
          tag: 'RECENT POSTS',
          title: 'SPORTS',
          buttonText: 'SEE ALL',
        ),
        ImageTextCard(),
      ]),
    );
  }
}
