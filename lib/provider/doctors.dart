import 'package:flutter/cupertino.dart';

class Doctor {
  final String id;
  final String name;
  final String type;
  final String experience;
  final String rating;
  final String noOfPatient;
  final String time;
  final String hospital;
  final String image;
  final String price;

  Doctor({
    required this.id,
    required this.name,
    required this.type,
    required this.experience,
    required this.rating,
    required this.noOfPatient,
    required this.time,
    required this.hospital,
    required this.image,
    required this.price,
  });
}

class Doctors extends ChangeNotifier {
  bool _doctorSearchScreen = false;
  String _searchHeader = '';
  String _id = '';
  String _value = '';
  final _doctors = [
    Doctor(
      id: "d1",
      name: "Dr Shruti Kediaa",
      type: "Tooth Dentist",
      experience: "7",
      rating: '87',
      noOfPatient: "69",
      time: "10:00",
      hospital: 'Upasana Dental Clinic, salt lake',
      image: 'assets/images/doc-shruti.png',
      price: '20.00',
    ),
    Doctor(
      id: "d5",
      name: "Dr. Shouey",
      type: "Specalist Cardiology",
      experience: "6",
      rating: '59',
      noOfPatient: "86",
      time: "11:00",
      hospital: 'Upasana Dental Clinic, salt lake',
      image: 'assets/images/doc-filler.png',
      price: '50.00',
    ),
    Doctor(
      id: "d2",
      name: "Dr Watamanik",
      type: "Tooth Dentist",
      experience: "9",
      rating: '74',
      noOfPatient: "78",
      time: "12:00",
      hospital: 'Upasana Dental Clinic, salt lake',
      image: 'assets/images/doc-wata.png',
      price: '30.00',
    ),
    Doctor(
      id: "d3",
      name: "Dr. Crownover",
      type: "Tooth Dentist",
      experience: "5",
      rating: '59',
      noOfPatient: "86",
      time: "11:00",
      hospital: 'Upasana Dental Clinic, salt lake',
      image: 'assets/images/doc-crown.png',
      price: '80.00',
    ),
    Doctor(
      id: "d4",
      name: "Dr. Balestra",
      type: "Tooth Dentist",
      experience: "6",
      rating: '59',
      noOfPatient: "86",
      time: "11:00",
      hospital: 'Upasana Dental Clinic, salt lake',
      image: 'assets/images/doc-bale.png',
      price: '10.00',
    ),
    Doctor(
      id: "d6",
      name: "Dr. Christenfeld N",
      type: "Specalist Cancer",
      experience: "6",
      rating: '59',
      noOfPatient: "86",
      time: "11:00",
      hospital: 'Upasana Dental Clinic, salt lake',
      image: 'assets/images/doc-strain.png',
      price: '70.00',
    ),
  ];

  List<Doctor> get doctors {
    return [..._doctors];
  }

  bool get getScreenState {
    return _doctorSearchScreen;
  }

  String get getSearchHeader {
    return _searchHeader;
  }

  void setScreenState(bool val, [String type = '']) {
    _doctorSearchScreen = val;
    _searchHeader = type;
    notifyListeners();
  }

  void edit(String myId, String myVal) {
    _id = myId;
    _value = myVal;
    notifyListeners();
  }

  String get getId {
    return _id;
  }

  String get getVal {
    return _value;
  }

  List<Doctor> searchDoctorType(String query) {
    return _doctors
        .where((element) =>
            element.type.toLowerCase().startsWith(query.toLowerCase()) ||
            element.type.toLowerCase().contains(query.toLowerCase()))
        .toList();
  }

  Doctor findDoctorById(String id) {
    return _doctors.firstWhere((doctor) => doctor.id == id);
  }
}
