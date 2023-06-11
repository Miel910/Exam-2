import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';

class ImageSlideShow extends StatelessWidget {
  const ImageSlideShow({super.key, required this.slideImage});

  final String slideImage;

  @override
  Widget build(BuildContext context) {
    return ImageSlideshow(
      height: 110,
      width: double.infinity,
      isLoop: true,
      indicatorColor: Colors.transparent,
      indicatorBackgroundColor: Colors.transparent,
      children: [
        Container(
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(50)),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image(
              fit: BoxFit.cover,
              image: AssetImage(slideImage),
            ),
          ),
        ),
        Image(
          fit: BoxFit.cover,
          image: AssetImage(slideImage),
        ),
        Image(
          fit: BoxFit.cover,
          image: AssetImage(slideImage),
        ),
        Image(
          fit: BoxFit.cover,
          image: AssetImage(slideImage),
        ),
      ],
    );
  }
}
