import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wally_app/constants.dart';
import 'package:wally_app/models/wallpaper_models.dart';
import 'package:wally_app/screens/detail_screen.dart';

class CarScreen extends StatefulWidget {
  const CarScreen({Key? key}) : super(key: key);

  @override
  State<CarScreen> createState() => _CarScreenState();
}

class _CarScreenState extends State<CarScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: kBackgroundColor,
        elevation: 0,
        title: Text(
          "Car",
          style: GoogleFonts.poppins(
            fontSize: 25,
            fontWeight: kFontWeight,
            color: kTitlecColor.withOpacity(.5),
            letterSpacing: 2,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 35,
              mainAxisSpacing: 25,
              childAspectRatio: .52),
          itemCount: cars.length,
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
              onTap: () {
                setState(() {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DetailScreen(
                          wallpaper: cars[index],
                          name: cars[index].name,
                          tag: cars[index].id.toString(),
                        ),
                      ));
                });
              },
              child: Container(
                decoration: BoxDecoration(
              
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                          cars[index].image,
                        ))),
              ),
            );
          },
        ),
      ),
    );
  }
}
