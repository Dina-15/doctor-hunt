import 'package:doctor_hunt/features/home/data/models/doctor_model.dart';
import 'package:doctor_hunt/features/home/data/repo/doctor_data.dart';
import 'package:doctor_hunt/features/home/ui/widget/popular_doctor_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PopularDoctorListView extends StatelessWidget {
  PopularDoctorListView({super.key});

  final List<DoctorModel> doctorData = DoctorData.popularDoctorList;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300.h,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: doctorData.length,
        itemBuilder: (context, index) =>
            PopularDoctorCard(cardData: doctorData[index]),
      ),
    );
  }
}
