import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';


class AnimatedImages extends StatefulWidget {
  const AnimatedImages({super.key});

  @override
  State<AnimatedImages> createState() => _AnimatedImagesState();
}

class _AnimatedImagesState extends State<AnimatedImages> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Stack(
          children: [
            Positioned(
              top: 50,
              left: 20,
              child: FadeInUp(
                child: Image.network(
                  'data:image/jpeg;base64,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',
                  width: 550,
                  // height: 200,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned(
              top: 100,
              right: 20,
              child: FadeInUp(
                delay: Duration(milliseconds: 200),
                child: Image.network(
                  'https://global.discourse-cdn.com/auth0/original/3X/e/c/ec121d8cfbeb56e6cb593e3eb98876890c73b37e.png',
                  width: 550,
                 
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned(
              top: 250,
              left: 50,
              child: FadeInUp(
                delay: Duration(milliseconds: 400),
                child: Image.network(
                  'https://lokalise.com/blog/wp-content/webp-express/webp-images/doc-root/wp-content/uploads/2023/01/Flutter.png.webp',
                  width: 550,
                  // height: 100,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            // Add more Positioned widgets as needed
          ],
        ),
      ],
    );
  }
}
