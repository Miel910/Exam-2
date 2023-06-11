import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../Styles/app_styles.dart';

// ignore: must_be_immutable
class FilterButton extends StatefulWidget {
  final String categoryName;

  FilterButton({super.key, required this.categoryName});
  late String category = categoryName;

  @override
  State<FilterButton> createState() => _CategoryButtonState();
}

class _CategoryButtonState extends State<FilterButton> {
  bool selected = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10),
      height: 26,
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
              side: const BorderSide(
                color: Colors.transparent,
              ),
            ),
          ),
          backgroundColor: (selected == false)
              ? MaterialStateProperty.all(Styles.primaryColor)
              : MaterialStateProperty.all(
                  const Color.fromARGB(255, 229, 229, 229)),
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
              fontWeight: FontWeight.w300,
              color: (selected == true) ? Colors.black : Colors.white),
        ),
      ),
    );
  }
}
