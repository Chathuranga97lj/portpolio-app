import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/components.dart';

class LandingPageWeb extends StatefulWidget {
  const LandingPageWeb({Key? key}) : super(key: key);

  @override
  State<LandingPageWeb> createState() => _LandingPageWebState();
}

class _LandingPageWebState extends State<LandingPageWeb> {
  @override
  Widget build(BuildContext context) {
    var heightDevice = MediaQuery.of(context).size.height;
    var widthDevice = MediaQuery.of(context).size.width;
    return Scaffold(
      drawer: Drawer(),
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0, // default 4.0
        iconTheme: IconThemeData(size: 25.0, color: Colors.black),
        title: Row(
          children: [
            Spacer(
              flex: 3,
            ),
            TabsWeb("Home"),
            Spacer(),
            TabsWeb("Works"),
            Spacer(),
            TabsWeb("Blog"),
            Spacer(),
            TabsWeb("About"),
            Spacer(),
            TabsWeb("Contact"),
            Spacer(),
          ],
        ),
      ),
      body: ListView(children: [
        // First Page
        Container(
          height: heightDevice - 56, // default app bar size = 56
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
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
                    padding:
                        EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                    child: SansBold("Hello I'm", 15),
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  SansBold("Chathuranga Lakmal", 55.0),
                  Sans("Fullstack Developer", 30.0),
                  SizedBox(
                    height: 15.0,
                  ),
                  Row(
                    children: [
                      Icon(Icons.email),
                      SizedBox(
                        width: 20,
                      ),
                      Sans("chathuit97@gmail.com", 15.0),
                    ],
                  ),
                  SizedBox(height: 10.0),
                  Row(
                    children: [
                      Icon(Icons.call),
                      SizedBox(
                        width: 20,
                      ),
                      Sans("+94 76 8711 780", 15.0),
                    ],
                  ),
                  SizedBox(height: 10.0),
                  Row(
                    children: [
                      Icon(Icons.location_pin),
                      SizedBox(
                        width: 20,
                      ),
                      Sans("Palipana Mawatha, Wadupola, Ibbagamuwa", 15.0),
                    ],
                  ),
                ],
              ),
              CircleAvatar(
                radius: 147.0,
                backgroundColor: Colors.tealAccent,
                child: CircleAvatar(
                  radius: 143.0,
                  backgroundColor: Colors.black,
                  child: CircleAvatar(
                    radius: 140.0,
                    backgroundImage: AssetImage("assets/Chathu_circle.png"),
                  ),
                ),
              ),
            ],
          ),
        ),
        // Second Page
        Container(
          height: heightDevice / 1.5,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                "assets/web.jpg",
                height: heightDevice / 1.7,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SansBold("About Me", 40),
                  SizedBox(
                    height: 15.0,
                  ),
                  Sans(
                      "Hello! I'm Chathuranga Lakmal I specialize in Mobile and Web Development",
                      15),
                  Sans(
                      "I am a hardworking and ambitious individual with a great passion for Information Technology ",
                      15),
                  Sans(
                      "I am currently working at Efito Solutions as a trainee Software Engineer",
                      15),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    // Skills
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            border: Border.all(
                                color: Colors.tealAccent,
                                style: BorderStyle.solid,
                                width: 2.0),
                            borderRadius: BorderRadius.circular(5.0)),
                        padding: EdgeInsets.all(7.0),
                        child: Sans("Flutter", 15.0),
                      ),
                      SizedBox(
                        width: 7.0,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            border: Border.all(
                                color: Colors.tealAccent,
                                style: BorderStyle.solid,
                                width: 2.0),
                            borderRadius: BorderRadius.circular(5.0)),
                        padding: EdgeInsets.all(7.0),
                        child: Sans("React", 15.0),
                      ),
                      SizedBox(
                        width: 7.0,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            border: Border.all(
                                color: Colors.tealAccent,
                                style: BorderStyle.solid,
                                width: 2.0),
                            borderRadius: BorderRadius.circular(5.0)),
                        padding: EdgeInsets.all(7.0),
                        child: Sans("React-Native", 15.0),
                      ),
                      SizedBox(
                        width: 7.0,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            border: Border.all(
                                color: Colors.tealAccent,
                                style: BorderStyle.solid,
                                width: 2.0),
                            borderRadius: BorderRadius.circular(5.0)),
                        padding: EdgeInsets.all(7.0),
                        child: Sans("MongoDB", 15.0),
                      ),
                      SizedBox(
                        width: 7.0,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            border: Border.all(
                                color: Colors.tealAccent,
                                style: BorderStyle.solid,
                                width: 2.0),
                            borderRadius: BorderRadius.circular(5.0)),
                        padding: EdgeInsets.all(7.0),
                        child: Sans("MySQL", 15.0),
                      ),
                      SizedBox(
                        width: 7.0,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            border: Border.all(
                                color: Colors.tealAccent,
                                style: BorderStyle.solid,
                                width: 2.0),
                            borderRadius: BorderRadius.circular(5.0)),
                        padding: EdgeInsets.all(7.0),
                        child: Sans("Python", 15.0),
                      ),
                      SizedBox(
                        width: 7.0,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            border: Border.all(
                                color: Colors.tealAccent,
                                style: BorderStyle.solid,
                                width: 2.0),
                            borderRadius: BorderRadius.circular(5.0)),
                        padding: EdgeInsets.all(7.0),
                        child: Sans("Java", 15.0),
                      ),
                    ],
                  )
                ],
              ),
            ],
          ),
        ),
        // Third Section
        Container(
          height: heightDevice / 1.3,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SansBold("What I Do ?", 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Card(
                    elevation: 30,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0)),
                    shadowColor: Colors.tealAccent,
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset(
                            "assets/webL.png",
                            height: 200,
                            width: 200,
                          ),
                          SizedBox(height: 10),
                          SansBold("Web Development", 15.0)
                        ],
                      ),
                    ),
                  ),
                  Card(
                    elevation: 30,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0)),
                    shadowColor: Colors.tealAccent,
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset(
                            "assets/app.png",
                            height: 200,
                            width: 200,
                            fit: BoxFit.contain,
                          ),
                          SizedBox(height: 10),
                          SansBold("Mobile Development", 15.0)
                        ],
                      ),
                    ),
                  ),
                  Card(
                    elevation: 30,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0)),
                    shadowColor: Colors.tealAccent,
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset(
                            "assets/mongo.jpg",
                            height: 200,
                            width: 200,
                          ),
                          SizedBox(height: 10),
                          SansBold("Back-End Development", 15.0)
                        ],
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
        // Forth section
        Container(
          height: heightDevice,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SansBold("Contact Me", 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      TextForm(
                          heading: "First Name",
                          width: 350,
                          hintText: "Please type your first name",
                          maxLine: 1),
                      SizedBox(height: 15),
                      TextForm(
                          heading: "Email",
                          width: 350,
                          hintText: "Please enter your email address",
                          maxLine: 1)
                    ],
                  ),
                  Column(
                    children: [
                      TextForm(
                          heading: "Last Name",
                          width: 350,
                          hintText: "Please enter your last name",
                          maxLine: 1),
                      SizedBox(height: 15.0),
                      TextForm(
                          heading: "Phone Number",
                          width: 350,
                          hintText: "Please enter your phone no",
                          maxLine: 1)
                    ],
                  )
                ],
              ),
              TextForm(
                  heading: "Message",
                  width: widthDevice / 1.5,
                  hintText: "Please enter your message",
                  maxLine: 10)
            ],
          ),
        )
      ]),
    );
  }
}
