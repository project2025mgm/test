import 'package:flutter/material.dart';

class CalenderProvider extends ChangeNotifier {
  final List<Map<String, dynamic>> _attendanceData = [
    {'image': 'assets/image/userpic.png', "Name": "Ajay", "Standard": "5A"},
    {'image': 'assets/image/userpic1.png', "Name": "murali", "Standard": "5A"},
    {'image': 'assets/image/userpic2.png', "Name": "Akash", "Standard": "3A"},
    {'image': 'assets/image/userpic.png', "Name": "anjana", "Standard": "5A"},
    {'image': 'assets/image/userpic1.png', "Name": "chikku", "Standard": "5A"},
    {'image': 'assets/image/userpic2.png', "Name": "archana", "Standard": "3A"},
    {'image': 'assets/image/userpic.png', "Name": "kaviya", "Standard": "5A"},
    {'image': 'assets/image/userpic1.png', "Name": "kiran", "Standard": "5A"},
    {'image': 'assets/image/userpic2.png', "Name": "vishnu", "Standard": "3A"},
  ];

  List<Map<String, dynamic>> get attendanceData => _attendanceData;
}
