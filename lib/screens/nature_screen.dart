import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wally_app/constants.dart';
import 'package:wally_app/models/wallpaper_models.dart';
import 'package:wally_app/screens/detail_screen.dart';

class NatureScreen extends StatefulWidget {
  const NatureScreen({Key? key}) : super(key: key);

  @override
  State<NatureScreen> createState() => _NatureScreenState();
}

class _NatureScreenState extends State<NatureScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: kBackgroundColor,
        elevation: 0,
        title: Text(
          "Nature",
          style: GoogleFonts.poppins(
            fontSize: 25,
            fontWeight: kFontWeight,
            color: kTitlecColor.withOpacity(.5),
            letterSpacing: 2,
          ),
        ),
      ),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: .5,
          crossAxisSpacing: 25,
          mainAxisSpacing: 25,
        ),
        itemCount: 4,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () {
              setState(() {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DetailScreen(
                          wallpaper: natures[index],
                          name: natures[index].name,
                          tag: natures[index].id.toString()),
                    ));
              });
            },
            child: Container(
              decoration: BoxDecoration(
         
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(natures[index].image),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
