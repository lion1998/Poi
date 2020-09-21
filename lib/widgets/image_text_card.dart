import 'package:flutter/material.dart';

class ImageTextCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      child: Column(
        children: [
          Image.asset(
            'assets/land1.jpg',
            fit: BoxFit.cover,
          ),
          Text('Life is a journey', style: TextStyle(fontWeight: FontWeight.w100, fontSize: 20, color: Colors.blue))
        ],
      ),
    );
  }
}
