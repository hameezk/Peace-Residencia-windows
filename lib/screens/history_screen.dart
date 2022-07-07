import 'package:flutter/material.dart';

import '../widgets/side_nav.dart';

class HistoryScreen extends StatefulWidget {
  const HistoryScreen({Key? key}) : super(key: key);

  @override
  State<HistoryScreen> createState() => _HistoryScreenState();
}

class _HistoryScreenState extends State<HistoryScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        height: size.height,
        color: Colors.grey[100],
        child: Row(
          children: const [
            SideNav(),
          ],
        ),
      ),
    );
  }
}
