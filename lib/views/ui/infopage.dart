import 'package:flutter/material.dart';
import 'package:sigac/views/shared/appstyle.dart';

class InfoPage extends StatefulWidget {
  const InfoPage({super.key});

  @override
  State<InfoPage> createState() => _InfoPageState();
}

class _InfoPageState extends State<InfoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          "This is Info Page",
          style: appsstyle(40, Colors.black, FontWeight.bold),
        ),
      ),
    );
  }
}
