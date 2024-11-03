import 'package:flutter/material.dart';

class Movie extends StatelessWidget {
  final int id;
  final String title, posterPath;
  final double width, height;
  final bool isPopular;

  const Movie({
    super.key,
    required this.id,
    required this.title,
    required this.posterPath,
    required this.width,
    required this.height,
    required this.isPopular,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          width: width,
          height: height,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
              image: NetworkImage('https://image.tmdb.org/t/p/w500$posterPath'),
              fit: BoxFit.cover,
            ),
          ),
        ),
        const SizedBox(height: 10),
        if (!isPopular)
          SizedBox(
            width: width,
            child: Text(
              title,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
              softWrap: true,
            ),
          ),
      ],
    );
  }
}
