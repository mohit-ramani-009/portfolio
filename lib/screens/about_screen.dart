import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AboutPage extends StatefulWidget {
  const AboutPage({super.key});

  @override
  State<AboutPage> createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 100,right: 100),
              child: Row(
                children: [
                  Text("UTSAVI",
                    style: GoogleFonts.ubuntu(
                      color: Colors.red,
                      fontSize: 50,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(width: 360,),
                  TextButton(onPressed: () {
                    Navigator.of(context).pushNamed("/");
                  },
                    child: Text("HOME",
                      style: GoogleFonts.ubuntu(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(width: 30,),
                  TextButton(onPressed: () {
                    Navigator.of(context).pushNamed("about");
                  },
                    child: Text("ABOUT",
                      style: GoogleFonts.ubuntu(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(width: 30,),
                  TextButton(onPressed: () {
                    Navigator.of(context).pushNamed("services");
                  },
                    child: Text("SERVICES", style: GoogleFonts.ubuntu(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                    ),
                  ),
                  SizedBox(width: 30,),
                  TextButton(onPressed: () {
                    Navigator.of(context).pushNamed("portfolio");
                  },
                    child: Text("PORTFOLIO", style: GoogleFonts.ubuntu(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                    ),
                  ),
                  SizedBox(width: 30,),
                  TextButton(onPressed: () {
                    Navigator.of(context).pushNamed("contact");
                  },
                    child: Text("CONTACT", style: GoogleFonts.ubuntu(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                    ),
                  ),
                  SizedBox(width: 30,)
                ],
              ),
            ),
            SizedBox(height: 50,),
            Row(
              children: [
                Container(
                  height: 600,
                  width: 600,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assert/u1.jpg",)),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Hello, I am Utsavi Bhakhar",
                      style: GoogleFonts.ubuntu(
                        color: Colors.white,
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    SizedBox(height: 20,),

                    Text(
                      "I'm a Flutter Developer, I'm very passionate dedicated \n to my work. I have acquired the skills and knowledge \n neccesary to make  your project a success. I enjoy every \n step of code process. From discussion and collaboration \n to concept and execution. but I find the most tion in \n seeing the finished product do everything for you that \n it was created to do.",
                      style: GoogleFonts.ubuntu(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    ),
                    SizedBox(height: 20,),
                    Text("Name : Utsavi Bhakhar",
                      style: GoogleFonts.raleway(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10,),
                    Text("Age : 20",
                      style: GoogleFonts.raleway(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10,),
                    Text("Address : Rajkot",
                      style: GoogleFonts.raleway(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10,),
                    Text("Phone Number : +91 1234567890",
                      style: GoogleFonts.raleway(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10,),
                    Text("Email : example@gmail.com",
                      style: GoogleFonts.raleway(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 30,),
                    FloatingActionButton.extended(
                        onPressed: () {}, label: Text("Download Resume")),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}