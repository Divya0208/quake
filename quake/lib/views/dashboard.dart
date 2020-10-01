import 'package:flutter/material.dart';
import 'pageone.dart';

class Dashboard extends StatefulWidget {
  static const String id = 'dashboard';

  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  List<Widget> pages = [PageOne()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        itemCount: pages.length,
        itemBuilder: (context, position) => pages[position],
      ),
    );
  }
}
