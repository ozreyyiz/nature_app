import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wally_app/constants.dart';
import 'package:wally_app/models/wallpaper_models.dart';
import 'package:wally_app/screens/detail_screen.dart';

class LatestScreen extends StatelessWidget {
  const LatestScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: kBackgroundColor,
      appBar: AppBar(
        centerTitle: true,
        automaticallyImplyLeading: false,
        elevation: 0,
        backgroundColor: kBackgroundColor,
        title: Text(
          "Latest",
          style: GoogleFonts.poppins(
            fontSize: kAppBarFontSize,
            color: kTitlecColor.withOpacity(.5),
            fontWeight: kFontWeight,
            letterSpacing: 2,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: GridView.builder(
          physics: const BouncingScrollPhysics(),
          padding: EdgeInsets.symmetric(
            horizontal: size.width * 0.05,
            vertical: size.height * 0.02,
          ),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: .52,
            crossAxisSpacing: 35,
            mainAxisSpacing: 25,
          ),
          itemCount: wallpaer.length,
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DetailScreen(tag: wallpaer[index].id.toString(),
                        wallpaper: wallpaer[index],
                        name: wallpaer[index].name,
                      ),
                    ));
              },
              child: Hero(
                tag: wallpaer[index].id,
                child: Container(
                  decoration: BoxDecoration(
                   
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(wallpaer[index].image))),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
