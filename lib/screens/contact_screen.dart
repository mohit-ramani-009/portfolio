import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class ContactPage extends StatefulWidget {
  const ContactPage({super.key});

  @override
  State<ContactPage> createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {

  String? name;
  String? email;
  String? subject;
  String? message;

  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController subjectController = TextEditingController();
  TextEditingController messageController = TextEditingController();

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
                          text: "CONTACT\t",
                          style: TextStyle(color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 30),
                        ),
                        TextSpan(
                          text: "US",
                          style: TextStyle(color: Colors.red,
                              fontWeight: FontWeight.bold,
                              fontSize: 30),
                        ),
                      ]
                  )
              ),
            ),
            SizedBox(height: 80,),

            Padding(
              padding: const EdgeInsets.only(left: 100,right: 100),
              child: Form(
                  key: formKey,
                  child: Column(
                    children: [
                      TextFormField(
                        controller: nameController,
                        keyboardType: TextInputType.name,
                        textInputAction: TextInputAction.next,
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        inputFormatters: [
                          FilteringTextInputFormatter.allow(RegExp("[a-zA-Z]")),
                        ],
                        decoration: const InputDecoration(
                          label: Text("Name", style: TextStyle(color: Colors.grey)),
                          border: OutlineInputBorder(),
                          hintText: 'Enter your Name',
                        ),
                        onSaved: (val) {
                          name = val;
                        },
                        validator: (val) {
                          if (val!.isEmpty) {
                            return "Please Enter Your Name";
                          }
                          return null;
                        },
                      ),
                      SizedBox(height: 30,),
                      TextFormField(
                        controller: emailController,
                        keyboardType: TextInputType.emailAddress,
                        textInputAction: TextInputAction.next,
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        decoration: const InputDecoration(
                          label: Text("Email", style: TextStyle(color: Colors.grey)),
                          border: OutlineInputBorder(),
                          hintText: 'Enter your Email',
                        ),
                        onSaved: (val) {
                          email = val;
                        },
                        validator: (val) {
                          if (val!.isEmpty) {
                            return "Please Enter Your Email";
                          }
                          return null;
                        },
                      ),
                      SizedBox(height: 30,),
                      TextFormField(
                        controller: subjectController,
                        keyboardType: TextInputType.name,
                        textInputAction: TextInputAction.next,
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        inputFormatters: [
                          FilteringTextInputFormatter.allow(RegExp("[a-zA-Z]")),
                        ],
                        decoration: const InputDecoration(
                          label: Text("Subject", style: TextStyle(color: Colors.grey)),
                          border: OutlineInputBorder(),
                          hintText: 'Enter your Subject',
                        ),
                        onSaved: (val) {
                          subject = val;
                        },
                        validator: (val) {
                          if (val!.isEmpty) {
                            return "Please Enter Your Subject";
                          }
                          return null;
                        },
                      ),
                      SizedBox(height: 30,),
                      TextFormField(
                        controller: messageController,
                        maxLines: 7,
                        keyboardType: TextInputType.name,
                        textInputAction: TextInputAction.next,
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        decoration: const InputDecoration(
                          label: Text("Message", style: TextStyle(color: Colors.grey),),
                          border: OutlineInputBorder(),
                          hintText: 'Enter your Message',
                        ),
                        onSaved: (val) {
                          message = val;
                        },
                        validator: (val) {
                          if (val!.isEmpty) {
                            return "Please Enter Your Message";
                          }
                          return null;
                        },
                      ),
                      SizedBox(height: 50,),
                      FloatingActionButton.extended(
                        label: Text("Send Message"),
                        onPressed: (){
                          if(formKey.currentState!.validate()){
                            formKey.currentState!.save();
                          }
                          print(name);
                          print(email);
                          print(subject);
                          print(message);
                        },
                      ),

                      SizedBox(height: 100,)
                    ],
                  )
              ),
            ),
          ],
        ),
      ),
    );
  }
}