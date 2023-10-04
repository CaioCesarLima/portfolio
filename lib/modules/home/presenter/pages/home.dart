import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: size.width,
        height: size.height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Caio Cesar",
              style: GoogleFonts.bebasNeue(
                  fontWeight: FontWeight.w300, fontSize: 96, letterSpacing: 37),
            ),
            Text(
              "FullStack Developer",
              style: GoogleFonts.bebasNeue(
                fontWeight: FontWeight.w700,
                fontSize: 96,
              ),
            ),
            Container(
              width: 500,
              alignment: Alignment.center,
              padding: EdgeInsets.only(bottom: 20),
              child: DefaultTextStyle(
                style: GoogleFonts.bebasNeue(fontWeight: FontWeight.w100, fontSize: 30),
                child: AnimatedTextKit(
                  onFinished: () {
                    setState(() {
                      
                    });
                  },
                  animatedTexts: [
                    TypewriterAnimatedText("Dart / Flutter"),
                    TypewriterAnimatedText("Elixir / Phoenix"),
                    TypewriterAnimatedText("Amazon AWS"),
                    TypewriterAnimatedText("PHP / Javascript / HTML / CSS"),
                    TypewriterAnimatedText("Mysql / Postgres / NoSQL"),
                    TypewriterAnimatedText("Supabase / Firebase"),
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Container(
                padding: const EdgeInsets.all(5),
                decoration: const BoxDecoration(color: Colors.grey),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Work",
                      style: GoogleFonts.bebasNeue(fontSize: 18),
                    ),
                    Text(
                      "About",
                      style: GoogleFonts.bebasNeue(fontSize: 18),
                    ),
                    Text(
                      "Contact",
                      style: GoogleFonts.bebasNeue(fontSize: 18),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
