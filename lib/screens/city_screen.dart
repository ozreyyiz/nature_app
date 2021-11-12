import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wally_app/constants.dart';
import 'package:wally_app/models/wallpaper_models.dart';
import 'package:wally_app/screens/detail_screen.dart';

class CityScreen extends StatefulWidget {
  const CityScreen({Key? key}) : super(key: key);

  @override
  State<CityScreen> createState() => _CityScreenState();
}

class _CityScreenState extends State<CityScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      appBar: AppBar(
        backgroundColor: kBackgroundColor,
        centerTitle: true,
        elevation: 0,
        title: Text(
          "City",
          style: GoogleFonts.poppins(
            fontSize: kAppBarFontSize,
            color: kTitlecColor.withOpacity(.5),
            fontWeight: kFontWeight,
            letterSpacing: 2,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: .5,
            crossAxisSpacing: 35,
            mainAxisSpacing: 25,
          ),
          itemCount: cities.length,
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
              onTap: () {
                setState(() {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DetailScreen(tag: cities[index].id.toString(),
                          name: cities[index].name,
                          wallpaper: cities[index],
                        ),
                      ));
                });
              },
              child: Hero(
                tag: cities[index].id,
                child: Container(
                  decoration: BoxDecoration(
              
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(cities[index].image))),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
