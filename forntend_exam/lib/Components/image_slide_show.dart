import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';

class ImageSlideShow extends StatelessWidget {
  const ImageSlideShow({
    super.key,
  });

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
          child: const Image(
            fit: BoxFit.cover,
            image:
                NetworkImage("https://pbs.twimg.com/media/DVmVe5GX4AAWan_.jpg"),
          ),
        ),
        const Image(
          fit: BoxFit.cover,
          image:
              NetworkImage("https://pbs.twimg.com/media/DVmVe5GX4AAWan_.jpg"),
        ),
        const Image(
          fit: BoxFit.cover,
          image:
              NetworkImage("https://pbs.twimg.com/media/DVmVe5GX4AAWan_.jpg"),
        ),
        const Image(
          fit: BoxFit.cover,
          image:
              NetworkImage("https://pbs.twimg.com/media/DVmVe5GX4AAWan_.jpg"),
        ),
      ],
    );
  }
}
