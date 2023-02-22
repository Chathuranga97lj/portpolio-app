import 'package:flutter/material.dart';
import 'package:portfolio/mobile/landing_page_mobile.dart';
import 'package:portfolio/web/landing_page_web.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LayoutBuilder(
        builder: (context, constraints){
          if(constraints.maxHeight > 800){
            return LandingPageWeb();
          } else {
            return LandingPageMobile();
          }
        }
      )
    );
  }
}