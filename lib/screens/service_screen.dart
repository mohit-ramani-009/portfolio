import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ServicesPage extends StatefulWidget {
  const ServicesPage({super.key});

  @override
  State<ServicesPage> createState() => _ServicesPageState();
}

class _ServicesPageState extends State<ServicesPage> {
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
                          text: "SERVICES",
                          style: TextStyle(color: Colors.red,
                              fontWeight: FontWeight.bold,
                              fontSize: 30),
                        ),
                      ]
                  )
              ),
            ),
            SizedBox(height: 80,),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  height: 280,
                  width: 350,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.white),
                  ),
                  child: Column(
                    children: [
                      SizedBox(height: 30,),
                      ClipRRect(
                          borderRadius: BorderRadius.circular(100),
                          child: Image.network(
                            "https://tse4.mm.bing.net/th?id=OIP.l94Aqt0tTBFYbiaviXhC4gHaHa&pid=Api&P=0&h=180",
                            height: 80, width: 80,)),
                      SizedBox(height: 30,),
                      Text("App Development", style: TextStyle(color: Colors
                          .white, fontSize: 30, fontWeight: FontWeight.bold),)
                    ],
                  ),
                ),
                SizedBox(width: 50,),
                Container(
                  height: 280,
                  width: 350,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.white),
                  ),
                  child: Column(
                    children: [
                      SizedBox(height: 30,),
                      ClipRRect(
                          borderRadius: BorderRadius.circular(100),
                          child: Image.network(
                            "https://tse4.mm.bing.net/th?id=OIP.dRyGUSNQ61pWJir3c4zlXQHaHa&pid=Api&P=0&h=180",
                            height: 80, width: 80,)),
                      SizedBox(height: 30,),
                      Text("Web Development", style: TextStyle(color: Colors
                          .white, fontSize: 30, fontWeight: FontWeight.bold),)
                    ],
                  ),
                ),
                SizedBox(width: 50,),
                Container(
                  height: 280,
                  width: 350,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.white),
                  ),
                  child: Column(
                    children: [
                      SizedBox(height: 30,),
                      ClipRRect(
                          borderRadius: BorderRadius.circular(100),
                          child: Image.network(
                            "https://tse4.mm.bing.net/th?id=OIP.LQuxpo8ALsDeEKStRncZRwHaHa&pid=Api&P=0&h=180",
                            height: 80, width: 80,)),
                      SizedBox(height: 30,),
                      Text(
                        "Firebase Development", style: TextStyle(color: Colors
                          .white, fontSize: 30, fontWeight: FontWeight.bold),)
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 30,),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  height: 280,
                  width: 350,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.white),
                  ),
                  child: Column(
                    children: [
                      SizedBox(height: 30,),
                      ClipRRect(
                          borderRadius: BorderRadius.circular(100),
                          child: Image.network(
                            "https://static.vecteezy.com/system/resources/previews/017/322/215/original/ux-ui-design-icon-outline-illustration-vector.jpg",
                            height: 80, width: 80,)),
                      SizedBox(height: 30,),
                      Text("UI/UX Design", style: TextStyle(color: Colors
                          .white, fontSize: 30, fontWeight: FontWeight.bold),)
                    ],
                  ),
                ),
                SizedBox(width: 50,),
                Container(
                  height: 280,
                  width: 350,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.white),
                  ),
                  child: Column(
                    children: [
                      SizedBox(height: 30,),
                      ClipRRect(
                          borderRadius: BorderRadius.circular(100),
                          child: Image.network(
                            "https://media.istockphoto.com/vectors/with-gear-icon-linear-vector-id1206186579?k=20&m=1206186579&s=612x612&w=0&h=tYbuN6WzsY3bnKM0-U1Di53K-TDyzZLI6c07MpgEa2M=",
                            height: 80, width: 80,)),
                      SizedBox(height: 30,),
                      Text("API Calling", style: TextStyle(color: Colors
                          .white, fontSize: 30, fontWeight: FontWeight.bold),)
                    ],
                  ),
                ),
                SizedBox(width: 50,),
                Container(
                  height: 280,
                  width: 350,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.white),
                  ),
                  child: Column(
                    children: [
                      SizedBox(height: 30,),
                      ClipRRect(
                          borderRadius: BorderRadius.circular(100),
                          child: Image.network(
                            "https://tse3.mm.bing.net/th?id=OIP.8fNu5HX8ux502RaE-K2-hgHaFm&pid=Api&P=0&h=180",
                            height: 80, width: 80,)),
                      SizedBox(height: 30,),
                      Text("PHP Development", style: TextStyle(color: Colors
                          .white, fontSize: 30, fontWeight: FontWeight.bold),)
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}