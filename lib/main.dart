import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/screens/about_screen.dart';
import 'package:portfolio/screens/contact_screen.dart';
import 'package:portfolio/screens/home_screen.dart';
import 'package:portfolio/screens/portfolio_screen.dart';
import 'package:portfolio/screens/service_screen.dart';


void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    routes: {
      '/': (context) => HomePage(),
      'AboutPage': (context) => AboutPage(),
      'ServicesPage': (context) => ServicesPage(),
      'PortfolioPage': (context) => PortfolioPage(),
      'ContactPage': (context) => ContactPage(),
    },
  ));
}