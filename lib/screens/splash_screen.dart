import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wally_app/constants.dart';
import 'package:wally_app/screens/home_screen.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    splashHandle();
  }

  void splashHandle() {
    Future.delayed(const Duration(seconds: 4), () {
      Navigator.push(context, MaterialPageRoute(builder: (context) => const HomeScreen() ,));
    });
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Stack(alignment: Alignment.center, children: [
          Opacity(
            opacity: 0.6,
            child: SizedBox(
              height: double.infinity,
              width: double.infinity,
              child: Image.network(
                "https://images.pexels.com/photos/3876407/pexels-photo-3876407.jpeg?auto=compress&cs=tinysrgb&h=750&w=1260",
                fit: BoxFit.cover,
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 5),
                child: Text(
                  "Welcome to",
                  style: GoogleFonts.poppins(
                    fontSize: size.width * 0.025,
                    color: Colors.white,
                  ),
                ),
              ),
              Text(
                "Nature",
                style: GoogleFonts.poppins(
                    fontSize: size.width * 0.1,
                    fontWeight: FontWeight.w500,
                    foreground: Paint()..shader = kGradientTextColor),
              )
            ],
          ),
          Positioned(
            bottom: 20,
            child: Text(
              "Find wallpapers of your choice",
              style: GoogleFonts.poppins(
                fontSize: size.width * 0.04,
                color: kTextColor.withOpacity(.6),
              ),
            ),
          )
        ]),
      ),
    );
  }
}
