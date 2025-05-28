import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:teacherapp/calendar/provider/calender_provider.dart';
import 'package:teacherapp/calendar/widgets/studentlist.dart';

class AttendanceList extends StatelessWidget {
  const AttendanceList({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Color(0xFF20A4AC),
          leading: IconButton(
            icon: const Icon(Icons.arrow_back_ios_new, color: Colors.white),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          title: const Text('Class 6', style: TextStyle(color: Colors.white)),
        ),
        body: SafeArea(
          child: Column(
            children: [
              Container(
                color: Color(0xFFf8fcfc),
                child: const TabBar(
                  indicatorColor: Color(0xFF20A4AC),
                  labelColor: Colors.black,
                  unselectedLabelColor: Colors.black,
                  tabs: [Tab(text: 'Attendance'), Tab(text: 'Leave Request')],
                ),
              ),
              Expanded(
                child: TabBarView(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Text(
                                'Class 6 ',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.filter_alt_outlined),
                            ),
                          ],
                        ),
                        Expanded(
                          child: ListView(
                            children: [
                              Consumer<CalenderProvider>(
                                builder: (context, provider, child) {
                                  return ListView.builder(
                                    shrinkWrap: true,
                                    physics: NeverScrollableScrollPhysics(),
                                    itemCount: provider.attendanceData.length,
                                    itemBuilder: (context, index) {
                                      final student =
                                          provider.attendanceData[index];
                                      return StudentCard(
                                        image: student['image'],
                                        name: student['Name'],
                                        standard: student['Standard'],
                                      );
                                    },
                                  );
                                },
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Center(child: Text('Time Table Content Here')),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 10,
                  horizontal: 16,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Color(0xFF20A4AC), width: 1),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      width: 158,
                      height: 44,
                      child: Center(
                        child: Text(
                          'Edit',
                          style: TextStyle(
                            fontSize: 18,
                            color: Color(0xFF20A4AC),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Color(0xFF20A4AC),
                        border: Border.all(color: Color(0xFF20A4AC), width: 1),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      width: 158,
                      height: 44,
                      child: Center(
                        child: Text(
                          'Save',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
