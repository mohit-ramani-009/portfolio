import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PortfolioPage extends StatefulWidget {
  const PortfolioPage({super.key});

  @override
  State<PortfolioPage> createState() => _PortfolioPageState();
}

class _PortfolioPageState extends State<PortfolioPage> {
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
            Center(
              child: Text.rich(
                  TextSpan(
                      children: [
                        TextSpan(
                          text: "MY\t",
                          style: TextStyle(color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 30),
                        ),
                        TextSpan(
                          text: "PORTFOLIO",
                          style: TextStyle(color: Colors.red,
                              fontWeight: FontWeight.bold,
                              fontSize: 30),
                        ),
                      ]
                  )
              ),
            ),
            SizedBox(height: 80,),
          ],
        ),
      ),
    );

  }
}