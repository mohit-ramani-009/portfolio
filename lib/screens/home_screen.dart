import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
      backgroundColor: Colors.teal.shade300,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(right: 100, left: 100),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    "Mohit",
                    style: GoogleFonts.ubuntu(
                      color: Colors.black,
                      fontSize: 50,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    width: 360,
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed("/");
                    },
                    child: Text(
                      "HOME",
                      style: GoogleFonts.ubuntu(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 30,
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed("AboutPage");
                    },
                    child: Text(
                      "ABOUT",
                      style: GoogleFonts.ubuntu(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 30,
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed("ServicesPage");
                    },
                    child: Text(
                      "SERVICES",
                      style: GoogleFonts.ubuntu(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 30,
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed("PortfolioPage");
                    },
                    child: Text(
                      "PORTFOLIO",
                      style: GoogleFonts.ubuntu(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 30,
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed("ContactPage");
                    },
                    child: Text(
                      "CONTACT",
                      style: GoogleFonts.ubuntu(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 30,
                  )
                ],
              ),
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "WELCOME!",
                        style: GoogleFonts.ubuntu(
                          color: Colors.black,
                          fontSize: 26,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Text(
                        "I Am Flutter Developer",
                        style: GoogleFonts.ubuntu(
                          color: Colors.white,
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Text(
                        "I'm a Flutter Developer, I am a Fresher. My expertise is to create \n and Flutter developer, Figma and many more",
                        style: GoogleFonts.ubuntu(
                          color: Colors.white,
                          fontSize: 18,
                          //fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  Container(
                    height: 600,
                    width: 600,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(
                        "https://static.vecteezy.com/system/resources/previews/030/690/466/non_2x/office-worker-2d-cartoon-illustraton-on-white-background-h-free-photo.jpg",
                      )),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 100,
              ),
              Row(
                children: [
                  Container(
                    height: 600,
                    width: 600,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(
                        "https://static.vecteezy.com/system/resources/previews/030/690/466/non_2x/office-worker-2d-cartoon-illustraton-on-white-background-h-free-photo.jpg",
                      )),
                    ),
                  ),
                  const SizedBox(width: 30),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Hello, I am Mohit Ramani",
                        style: GoogleFonts.ubuntu(
                          color: Colors.white,
                          fontSize: 26,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Text(
                        "I'm a Flutter Developer, I'm very passionate dedicated \n to my work. I have acquiblack the skills and knowledge \n neccesary to make  your project a success. I enjoy every \n step of code process. From discussion and collaboration \n to concept and execution. but I find the most tion in \n seeing the finished product do everything for you that \n it was created to do.",
                        style: GoogleFonts.ubuntu(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Text(
                        "Name : Mohit Ramani",
                        style: GoogleFonts.raleway(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Age : 20",
                        style: GoogleFonts.raleway(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Address : Rajkot",
                        style: GoogleFonts.raleway(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Phone Number : +91 9558141511",
                        style: GoogleFonts.raleway(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Email : example@gmail.com",
                        style: GoogleFonts.raleway(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      FloatingActionButton.extended(
                          onPressed: () {},
                          label: const Text("Download Resume")),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 100,
              ),
              const Center(
                child: Text.rich(TextSpan(children: [
                  TextSpan(
                    text: "MY\t",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 30),
                  ),
                  TextSpan(
                    text: "SERVICES",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 30),
                  ),
                ])),
              ),
              const SizedBox(
                height: 80,
              ),
              Row(
                children: [
                  Container(
                    height: 280,
                    width: 350,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.white),
                    ),
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 30,
                        ),
                        ClipRRect(
                            borderRadius: BorderRadius.circular(100),
                            child: Image.network(
                              "https://tse4.mm.bing.net/th?id=OIP.l94Aqt0tTBFYbiaviXhC4gHaHa&pid=Api&P=0&h=180",
                              height: 80,
                              width: 80,
                            )),
                        const SizedBox(
                          height: 30,
                        ),
                        const Text(
                          "App Development",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 50,
                  ),
                  Container(
                    height: 280,
                    width: 350,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.white),
                    ),
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 30,
                        ),
                        ClipRRect(
                            borderRadius: BorderRadius.circular(100),
                            child: Image.network(
                              "https://tse4.mm.bing.net/th?id=OIP.dRyGUSNQ61pWJir3c4zlXQHaHa&pid=Api&P=0&h=180",
                              height: 80,
                              width: 80,
                            )),
                        const SizedBox(
                          height: 30,
                        ),
                        const Text(
                          "Web Development",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 50,
                  ),
                  Container(
                    height: 280,
                    width: 350,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.white),
                    ),
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 30,
                        ),
                        ClipRRect(
                            borderRadius: BorderRadius.circular(100),
                            child: Image.network(
                              "https://tse4.mm.bing.net/th?id=OIP.LQuxpo8ALsDeEKStRncZRwHaHa&pid=Api&P=0&h=180",
                              height: 80,
                              width: 80,
                            )),
                        const SizedBox(
                          height: 30,
                        ),
                        const Text(
                          "Firebase Development",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  Container(
                    height: 280,
                    width: 350,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.white),
                    ),
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 30,
                        ),
                        ClipRRect(
                            borderRadius: BorderRadius.circular(100),
                            child: Image.network(
                              "https://static.vecteezy.com/system/resources/previews/017/322/215/original/ux-ui-design-icon-outline-illustration-vector.jpg",
                              height: 80,
                              width: 80,
                            )),
                        const SizedBox(
                          height: 30,
                        ),
                        const Text(
                          "UI/UX Design",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 50,
                  ),
                  Container(
                    height: 280,
                    width: 350,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.white),
                    ),
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 30,
                        ),
                        ClipRRect(
                            borderRadius: BorderRadius.circular(100),
                            child: Image.network(
                              "https://media.istockphoto.com/vectors/with-gear-icon-linear-vector-id1206186579?k=20&m=1206186579&s=612x612&w=0&h=tYbuN6WzsY3bnKM0-U1Di53K-TDyzZLI6c07MpgEa2M=",
                              height: 80,
                              width: 80,
                            )),
                        const SizedBox(
                          height: 30,
                        ),
                        const Text(
                          "API Calling",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 50,
                  ),
                  Container(
                    height: 280,
                    width: 350,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.white),
                    ),
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 30,
                        ),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(100),
                          child: Image.network(
                            "https://tse3.mm.bing.net/th?id=OIP.8fNu5HX8ux502RaE-K2-hgHaFm&pid=Api&P=0&h=180",
                            height: 80,
                            width: 80,
                          ),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        const Text(
                          "PHP Development",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 100,
              ),
              const Center(
                child: Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: "MY\t",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 30),
                      ),
                      TextSpan(
                        text: "PORTFOLIO",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 30),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 80,
              ),
              Row(
                children: [
                  Container(
                    height: 280,
                    width: 350,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.white),
                    ),
                    child: GestureDetector(
                        onTap: () {
                          final url = 'https://github.com/mohit-ramani-009/festival_app/tree/main/festival_app';
                          launchUrl(Uri.parse(url));
                        },
                        child: Container(
                          height: 280,
                          width: 350,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.white),
                          ),
                          child: const Center(
                            child: Text(
                              "Festival App",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold),
                            ),
                          )),
                    ),
                  ),
                  const SizedBox(width: 50),
                  Container(
                    height: 280,
                    width: 350,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.white),
                    ),
                    child: GestureDetector(
                        onTap: () {
                          final url = 'https://github.com/mohit-ramani-009/invoice_generator/tree/main/invoice_generator';
                          launchUrl(Uri.parse(url));
                        },
                        child: Container(
                          height: 280,
                          width: 350,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.white),
                          ),
                          child: const Center(
                            child: Text(
                              "Invoice App",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold),
                            ),
                          )),
                    ),
                  ),
                  const SizedBox(width: 50),
                  Container(
                    height: 280,
                    width: 350,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.white),
                    ),
                    child: GestureDetector(
                      onTap: () {
                        final url = 'https://github.com/mohit-ramani-009/festival_app/tree/main/festival_app';
                        launchUrl(Uri.parse(url));
                      },
                      child: Container(
                          height: 280,
                          width: 350,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.white),
                          ),
                          child: const Center(
                            child: Text(
                              "Festival App",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold),
                            ),
                          )),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 30),
              Row(
                children: [
                  Container(
                      height: 280,
                      width: 350,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.white),
                      ),
                      child: const Center(
                        child: Text(
                          "UI/UX Design",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                              fontWeight: FontWeight.bold),
                        ),
                      )),
                  const SizedBox(width: 50),
                  Container(
                      height: 280,
                      width: 350,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.white),
                      ),
                      child: const Text(
                        "API Calling",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontWeight: FontWeight.bold),
                      )),
                  const SizedBox(width: 50),
                  Container(
                      height: 280,
                      width: 350,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.white),
                      ),
                      child: const Text(
                        "PHP Development",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontWeight: FontWeight.bold),
                      )),
                ],
              ),
              const SizedBox(height: 80),
              const Center(
                child: Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: "CONTACT\t",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 30),
                      ),
                      TextSpan(
                        text: "US",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 30),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 80),
              Form(
                  key: formKey,
                  child: Column(
                    children: [
                      TextFormField(
                        controller: nameController,
                        style: const TextStyle(color: Colors.white),
                        keyboardType: TextInputType.name,
                        textInputAction: TextInputAction.next,
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        inputFormatters: [
                          FilteringTextInputFormatter.allow(RegExp("[a-zA-Z]")),
                        ],
                        decoration: const InputDecoration(
                          label: Text("Name",
                              style: TextStyle(color: Colors.grey)),
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
                      const SizedBox(
                        height: 30,
                      ),
                      TextFormField(
                        controller: emailController,
                        style: const TextStyle(color: Colors.white),
                        keyboardType: TextInputType.emailAddress,
                        textInputAction: TextInputAction.next,
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        decoration: const InputDecoration(
                          label: Text("Email",
                              style: TextStyle(color: Colors.grey)),
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
                      const SizedBox(
                        height: 30,
                      ),
                      TextFormField(
                        controller: subjectController,
                        style: const TextStyle(color: Colors.white),
                        keyboardType: TextInputType.name,
                        textInputAction: TextInputAction.next,
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        inputFormatters: [
                          FilteringTextInputFormatter.allow(RegExp("[a-zA-Z]")),
                        ],
                        decoration: const InputDecoration(
                          label: Text("Subject",
                              style: TextStyle(color: Colors.grey)),
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
                      const SizedBox(
                        height: 30,
                      ),
                      TextFormField(
                        style: const TextStyle(color: Colors.white),
                        controller: messageController,
                        maxLines: 7,
                        keyboardType: TextInputType.name,
                        textInputAction: TextInputAction.next,
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        decoration: const InputDecoration(
                          labelStyle: TextStyle(color: Colors.white),
                          label: Text(
                            "Message",
                            style: TextStyle(color: Colors.grey),
                          ),
                          border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                          ),
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
                      const SizedBox(
                        height: 50,
                      ),
                      FloatingActionButton.extended(
                        label: const Text("Send Message"),
                        onPressed: () {
                          if (formKey.currentState!.validate()) {
                            formKey.currentState!.save();
                          }
                          print(name);
                          print(email);
                          print(subject);
                          print(message);
                        },
                      ),
                      const SizedBox(
                        height: 100,
                      ),
                      Text(
                        "CopyRight © 2024 Mohit | All Rights Reserved",
                        style: GoogleFonts.ubuntu(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                    ],
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
