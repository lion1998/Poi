import 'package:flutter/material.dart';

import 'pages/welcome.dart';
import './pages/home.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: WelcomePage(),
      routes: {
        '/': (BuildContext context) {
          return WelcomePage();
        },
        '/homepage': (BuildContext context) {
          return HomePage();
        }
      },
    );
  }
}
