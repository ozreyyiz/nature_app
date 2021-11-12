import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wally_app/constants.dart';

class DetailScreen extends StatefulWidget {
  final dynamic wallpaper;
  final String name;
  final String tag;
  const DetailScreen({Key? key, required this.wallpaper, required this.name,required this.tag})
      : super(key: key);

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    
    return SafeArea(
      child: Scaffold(
        backgroundColor: kBackgroundColor,
        body: Stack(alignment: Alignment.bottomCenter, children: [
          SizedBox(
            width: double.infinity,
            height: double.infinity,
            child: Hero(
              tag: widget.tag,
              child: Image.network(
                widget.wallpaper.image,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            top: 10,
            left: 10,
            child: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(
                  Icons.arrow_back,
                  color: Colors.white,
                )),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(9, 9, 9, 9),
            width: double.infinity,
            height: size.height * 0.2,
            decoration: const BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(15),
                topLeft: Radius.circular(15),
              ),
            ),
            child: Column(
              children: [
                Text(
                  widget.name,
                  style: GoogleFonts.poppins(
                    color: Colors.white,
                    fontSize: size.width * 0.05,
                  ),
                ),
                const Spacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    buttonRow(
                      icon: Icons.file_download,
                      size: size,
                      name: "Save",
                    ),
                    buttonRow(
                      icon: Icons.favorite,
                      size: size,
                      name: "Favorite",
                    ),
                    buttonRow(
                      icon: Icons.insert_photo,
                      size: size,
                      name: "Edit",
                    )
                  ],
                )
              ],
            ),
          ),
        ]),
      ),
    );
  }

  Column buttonRow({size, IconData icon = Icons.mail, name}) {
    return Column(
      children: [
        Icon(
          icon,
          color: Colors.white,
        ),
        Padding(
          padding: const EdgeInsets.only(top: 5),
          child: Text(
            name,
            style: GoogleFonts.poppins(
              color: Colors.white,
              fontSize: size.width * 0.04,
            ),
          ),
        ),
      ],
    );
  }
}
