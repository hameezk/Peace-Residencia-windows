import 'package:flutter/material.dart';
import 'package:flutter_application_3/widgets/add_customer_panel.dart';
import '../widgets/side_nav.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
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
            AddCustomerPanel(),
          ],
        ),
      ),
    );
  }
}

