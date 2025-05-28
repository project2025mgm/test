import 'package:flutter/material.dart';

class StudentCard extends StatefulWidget {
  final String name;
  final String standard;
  final String image;

  const StudentCard({
    super.key,
    required this.name,
    required this.standard,
    required this.image,
  });

  @override
  _StudentCardState createState() => _StudentCardState();
}

class _StudentCardState extends State<StudentCard> {
  String? _attendanceStatus; // null (not selected), 'Present', or 'Absent'

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      margin: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.shade300, width: 1),
        borderRadius: BorderRadius.circular(12),
        color: Colors.white,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              CircleAvatar(
                backgroundImage: AssetImage(widget.image),
                radius: 25,
              ),
              const SizedBox(width: 16),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.name,
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                  ),
                  Text(
                    'Standard: ${widget.standard}',
                    style: TextStyle(fontSize: 14, color: Colors.grey.shade600),
                  ),
                ],
              ),
            ],
          ),
          Column(
            children: [
              GestureDetector(
                onTap: () {
                  setState(() {
                    _attendanceStatus = 'Present'; // Mark as Present
                  });
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: _attendanceStatus == 'Present' ? Colors.green : Colors.transparent,
                    border: Border.all(color: Colors.green, width: 1),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  width: 60,
                  height: 25,
                  child: Center(
                    child: Text(
                      'Present',
                      style: TextStyle(
                        color: _attendanceStatus == 'Present' ? Colors.white : Colors.black,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10),
              GestureDetector(
                onTap: () {
                  setState(() {
                    _attendanceStatus = 'Absent'; // Mark as Absent
                  });
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: _attendanceStatus == 'Absent' ? Colors.red : Colors.transparent,
                    border: Border.all(color: Colors.red, width: 1),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  width: 60,
                  height: 25,
                  child: Center(
                    child: Text(
                      'Absent',
                      style: TextStyle(
                        color: _attendanceStatus == 'Absent' ? Colors.white : Colors.black,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}