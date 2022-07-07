import 'package:flutter/material.dart';
import 'package:flutter_application_3/screens/main_screen.dart';

import '../screens/history_screen.dart';

class SideNav extends StatelessWidget {
  const SideNav({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      color: Theme.of(context).canvasColor,
      child: Column(
        children: [
          Row(
            children: [
              IconButton(
                  onPressed: () {}, icon: const Icon(Icons.stacked_bar_chart)),
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          ListTile(
            onTap: () => Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (context) {
              return const MyHomePage();
            })),
            leading: IconButton(onPressed: () {}, icon: const Icon(Icons.add)),
            title: const Text('Add New Record'),
          ),
          ListTile(
            onTap: () => Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (context) {
              return const HistoryScreen();
            })),
            leading:
                IconButton(onPressed: () {}, icon: const Icon(Icons.history)),
            title: const Text('Show Records'),
          ),
          ListTile(
            onTap: () => Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (context) {
              return const HistoryScreen();
            })),
            leading: IconButton(
                onPressed: () {}, icon: const Icon(Icons.exit_to_app_rounded)),
            title: const Text('Sign Out'),
          )
        ],
      ),
    );
  }
}
