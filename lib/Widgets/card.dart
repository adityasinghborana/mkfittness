import 'package:flutter/material.dart';

class HomePageCards extends StatelessWidget {

  final VoidCallback onPressed;
  final String imagePath;
  final String title;
  final String subtitle;
  final double imageHeight;
  final double imageWidth;
  final double fontSize;
  final double subtitlefontsize;
  final Color cardColor;
  final BorderRadius imageBorderRadius;

  const HomePageCards({
    super.key,
    required this.onPressed,
    required this.imagePath,
    required this.title,
    required this.subtitlefontsize,
    this.imageHeight = 300, // Default height
    this.imageWidth = 150,  // Default width
    this.fontSize = 24,     // Default font size
    required this.subtitle,
    this.cardColor = Colors.blue, // Default card color
    this.imageBorderRadius = const BorderRadius.only(
      topLeft: Radius.circular(50),
      bottomLeft: Radius.circular(20),
    ),
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: InkWell(
        onTap:
          onPressed
        ,
        child: Container(
          decoration: BoxDecoration(
            color: cardColor,
            borderRadius: BorderRadius.circular(20),
          ),
          height: imageHeight , // Adjust height based on the image
          child: Row(
            children: [
              ClipRRect(
                borderRadius: imageBorderRadius,
                child: Image.asset(
                  imagePath,
                  height: imageHeight,
                  width: imageWidth,
                  fit: BoxFit.cover,
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          title,
                          style: TextStyle(
                            fontSize: fontSize,
                            fontWeight: FontWeight.bold,
                            color: Theme.of(context).colorScheme.onSurface,
                          ),
                        ),
                        Text(
                          subtitle,
                          style: TextStyle(
                            fontSize: subtitlefontsize,
                            fontWeight: FontWeight.bold,
                            color: Theme.of(context).colorScheme.onSurface,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
