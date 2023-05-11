import 'package:flutter/material.dart';
import 'package:sigac/views/shared/appstyle.dart';

class AttendancePage extends StatefulWidget {
  const AttendancePage({super.key});

  @override
  State<AttendancePage> createState() => _AttendancePageState();
}

class _AttendancePageState extends State<AttendancePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          "This is Attendance Page",
          style: appsstyle(40, Colors.black, FontWeight.bold),
        ),
      ),
    );
  }
}
