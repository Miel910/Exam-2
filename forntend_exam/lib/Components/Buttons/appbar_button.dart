import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../Styles/app_styles.dart';

// ignore: must_be_immutable
class AppbarButton extends StatefulWidget {
  final String categoryName;

  AppbarButton({super.key, required this.categoryName});
  late String category = categoryName;

  @override
  State<AppbarButton> createState() => _CategoryButtonState();
}

class _CategoryButtonState extends State<AppbarButton> {
  bool selected = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 28,
      width: 110,
      decoration: BoxDecoration(
        color: Styles.primaryColor,
        borderRadius: BorderRadius.circular(100),
      ),
      child: ElevatedButton(
        style: ButtonStyle(
          elevation: MaterialStateProperty.all(0),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(13),
              side: BorderSide(
                color: Styles.primaryColor,
              ),
            ),
          ),
          backgroundColor: (selected == false)
              ? MaterialStateProperty.all(Styles.primaryColor)
              : MaterialStateProperty.all(Colors.white),
        ),
        onPressed: () {
          setState(() {
            selected = !selected;
          });
        },
        child: Text(
          widget.category,
          style: GoogleFonts.poppins(
              fontSize: 13,
              fontWeight: FontWeight.w600,
              color: (selected == true) ? Styles.primaryColor : Colors.white),
        ),
      ),
    );
  }
}
