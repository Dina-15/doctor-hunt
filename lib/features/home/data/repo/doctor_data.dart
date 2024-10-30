import 'package:doctor_hunt/core/constants/app_assets.dart';
import '../models/doctor_model.dart';

abstract class DoctorData {
  static final List<DoctorModel> popularDoctorList = [
    DoctorModel(
        name: 'Dr. Fillerup Grab', jobTitle: "Medicine Specialist", rate: 2.5, image: AppAssets.popularDoctor1),
    DoctorModel(name: 'Dr. Blessing', jobTitle: "Dentist Specialist", rate: 4, image: AppAssets.popularDoctor2),
  ];
  static final List<DoctorModel> featureDoctorList = [
    DoctorModel(
        name: 'Dr. Crick', pricePerHour: 25,rate: 3.7, image: AppAssets.featureDoctor1),
    DoctorModel(name: 'Dr. Strain', pricePerHour: 22,rate: 3, image: AppAssets.featureDoctor2),
    DoctorModel(name: 'Dr. Lachinet', pricePerHour: 29,rate: 2.9, image: AppAssets.featureDoctor3),
    DoctorModel(name: 'Dr. Crick', pricePerHour: 25,rate: 2, image: AppAssets.featureDoctor4),
  ];

}
