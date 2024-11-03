import 'package:flutter/material.dart';
import 'package:flutter_pannable_rating_bar/flutter_pannable_rating_bar.dart';

class RateDrawer extends StatelessWidget {
  const RateDrawer({super.key, required this.doctorRate});

  final double doctorRate;
  @override
  Widget build(BuildContext context) {
    return PannableRatingBar(
      rate: doctorRate,
      spacing: 3,
      items: List.generate(
        5,
            (index) => RatingWidget(
          selectedColor: Colors.amber,
          unSelectedColor: Colors.grey[300],
          child: const Icon(
            Icons.star,
            size: 20,
          ),
        ),
      ),
    );
  }
}
