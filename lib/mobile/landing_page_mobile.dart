import 'package:flutter/material.dart';
import 'package:portfolio/components.dart';
import 'package:url_launcher/url_launcher.dart';

class LandingPageMobile extends StatefulWidget {
  const LandingPageMobile({Key? key}) : super(key: key);

  @override
  State<LandingPageMobile> createState() => _LandingPageMobileState();
}

class _LandingPageMobileState extends State<LandingPageMobile> {
  urlLauncher(String imgPath, String url) {
    return IconButton(
      icon: Image.asset(imgPath, width: 35.0),
      onPressed: () async {
        await launchUrl(Uri.parse(url));
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    var widthDevice = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        iconTheme: IconThemeData(size: 35.0, color: Colors.black),
      ),
      endDrawer: Drawer(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            DrawerHeader(
              padding: EdgeInsets.only(bottom: 20.0),
              child: Container(
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(width: 2.0, color: Colors.black)),
                child: Image.asset("assets/Chathu_circle.png"),
              ),
            ),
            TabsMobile(text: "Home", route: "/"),
            SizedBox(height: 20.0),
            TabsMobile(text: "Works", route: "/works"),
            SizedBox(height: 20.0),
            TabsMobile(text: "Blog", route: "/blog"),
            SizedBox(height: 20.0),
            TabsMobile(text: "About", route: "/about"),
            SizedBox(height: 40.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                urlLauncher("assets/linkedin.png",
                    "https://www.linkedin.com/in/chathuranga97/"),
                urlLauncher(
                    "assets/twitter.png", "https://twitter.com/chathu97lj"),
                urlLauncher(
                    "assets/github.png", "https://github.com/Chathuranga97lj")
              ],
            )
          ],
        ),
      ),
      body: ListView(
        // Intro, First Section
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 117.0,
                  backgroundColor: Colors.tealAccent,
                  child: CircleAvatar(
                    radius: 110.0,
                    backgroundColor: Colors.white,
                    backgroundImage: AssetImage("assets/Chathu_circle.png"),
                  ),
                ),
                SizedBox(height: 25.0),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.tealAccent,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20.0),
                            topRight: Radius.circular(20.0),
                            bottomRight: Radius.circular(20.0),
                          )),
                      padding: EdgeInsets.symmetric(
                          vertical: 10.0, horizontal: 20.0),
                      child: SansBold("Hello I'm", 15.0),
                    ),
                    SansBold("Chathuranga", 40.0),
                    SansBold("Fullstack Developer", 20.0)
                  ],
                ),
                SizedBox(height: 15.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Wrap(
                      direction: Axis.vertical,
                      spacing: 3.0,
                      children: [
                        Icon(Icons.email),
                        Icon(Icons.call),
                        Icon(Icons.location_pin)
                      ],
                    ),
                    SizedBox(width: 40.0),
                    Wrap(
                      direction: Axis.vertical,
                      spacing: 9.0,
                      children: [
                        Sans("chathuit97@gmail.com", 15.0),
                        Sans("+94 76 8711 780", 15.0),
                        Sans("Ibbagamuwa, Kurunegala", 15.0),
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 90.0),
        ],
      ),
    );
  }
}
