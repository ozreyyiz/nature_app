import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wally_app/constants.dart';
import 'package:wally_app/models/categories_model.dart';
import 'package:wally_app/screens/animal_screen.dart';
import 'package:wally_app/screens/building_screen.dart';
import 'package:wally_app/screens/car_screen.dart';
import 'package:wally_app/screens/city_screen.dart';
import 'package:wally_app/screens/nature_screen.dart';

import 'package:wally_app/screens/sea_screen.dart';
import 'package:wally_app/screens/weather_screen.dart';

class CategoryScreen extends StatefulWidget {
  const CategoryScreen({Key? key}) : super(key: key);

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: kBackgroundColor,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(
          "Categories",
          style: GoogleFonts.poppins(
            fontSize: size.width * 0.05,
            fontWeight: FontWeight.w700,
            color: kTitlecColor.withOpacity(.5),
            letterSpacing: 2,
          ),
        ),
        centerTitle: true,
        elevation: 0,
        backgroundColor: kBackgroundColor,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              children: List.generate(
                categories.length,
                (index) => InkWell(
                  onTap: () {
                    setState(() {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => categories[index].page,
                          ));
                    });
                  },
                  child: Container(
                    width: double.infinity,
                    margin: EdgeInsets.symmetric(vertical: 10),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
              
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(categories[index].image)),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    height: size.height * 0.2,
                    child: Text(
                      categories[index].title,
                      style: GoogleFonts.poppins(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 2,
                        color: kTitlecColor,
                      ),
                    ),
                  ),
                ),
              ),
            )),
      ),
    );
  }
}
