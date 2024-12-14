import 'package:doctor_hunt/features/home/data/models/doctors_response_model.dart';
import 'package:doctor_hunt/features/home/ui/widget/popular_doctors/popular_doctor_list_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PopularDoctorListView extends StatelessWidget {
  const PopularDoctorListView({super.key, required this.doctorsList});

  final List<DoctorsData?> doctorsList;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 260.h,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 10,
          itemBuilder: (context, index) {
              return PopularDoctorListItem(doctorData: doctorsList[index]);
          }),
    );
  }
}
