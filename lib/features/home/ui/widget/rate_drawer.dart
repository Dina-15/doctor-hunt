import 'package:flutter/material.dart';

import '../../data/models/doctor_model.dart';

class RateDrawer extends StatelessWidget {
  const RateDrawer({super.key, required this.index, required  this.doctorModel});

  final int index;
  final DoctorModel doctorModel;
  @override
  Widget build(BuildContext context) {
    if (doctorModel.rate != 0 && index < doctorModel.rate) {
      if (index < doctorModel.rate.floor()) { // integer number
        return const Icon(
          Icons.star,
          color: Colors.amber,
          size: 20,
        );
      } else if (doctorModel.rate.floor() < doctorModel.rate) { // fraction part
        return const Icon(
          Icons.star_half,
          color: Colors.amber,
          size: 20,
        );
      }
    } else {
      return const Icon(
        Icons.star_border,
        color: Colors.amber,
        size: 20,
      );
    }
    return Container();
  }
}