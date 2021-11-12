import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wally_app/constants.dart';
import 'package:wally_app/models/wallpaper_models.dart';
import 'package:wally_app/screens/detail_screen.dart';

class AnimalScreen extends StatefulWidget {
  const AnimalScreen({Key? key}) : super(key: key);

  @override
  State<AnimalScreen> createState() => _AnimalScreenState();
}

class _AnimalScreenState extends State<AnimalScreen> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: kBackgroundColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: kBackgroundColor,
        centerTitle: true,
        title: Text(
          "Animal",
          style: GoogleFonts.poppins(
            letterSpacing: 2,
            color: kTitlecColor.withOpacity(.5),
            fontSize: size.width * 0.05,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      body: GridView.builder(
        physics: const BouncingScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: .52,
          crossAxisSpacing: 35,
          mainAxisSpacing: size.height * 0.05,
        ),
        itemCount: animals.length,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () {
              setState(
                () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DetailScreen(
                          tag: animals[index].id.toString(),
                          wallpaper: animals[index],
                          name: animals[index].name,
                        ),
                      ));
                },
              );
            },
            child: Container(
              decoration: BoxDecoration(
            
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(animals[index].image)),
              ),
            ),
          );
        },
      ),
    );
  }
}
