import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wally_app/constants.dart';
import 'package:wally_app/models/wallpaper_models.dart';
import 'package:wally_app/screens/detail_screen.dart';

class BuildingScreen extends StatefulWidget {
  const BuildingScreen({Key? key}) : super(key: key);

  @override
  State<BuildingScreen> createState() => _BuildingScreenState();
}

class _BuildingScreenState extends State<BuildingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      appBar: AppBar(
        backgroundColor: kBackgroundColor,
        centerTitle: true,
        elevation: 0,
        title: Text(
          "Building",
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
            childAspectRatio: .5,
            crossAxisSpacing: 25,
            mainAxisSpacing: 35,
          ),
          itemCount: buildings.length,
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
              onTap: () {
                setState(() {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DetailScreen(
                            wallpaper: buildings[index],
                            name: buildings[index].name,
                            tag: buildings[index].id.toString()),
                      ));
                });
              },
              child: Container(
                decoration: BoxDecoration(
              
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(buildings[index].image)),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
