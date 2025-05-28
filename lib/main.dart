import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:teacherapp/calendar/presentation/attendanceList.dart';
import 'package:teacherapp/calendar/provider/calender_provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => CalenderProvider(),
      child: First(),
    ),
  );
}

class First extends StatelessWidget {
  const First({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AttendanceList(),
    );
  }
}
