import 'package:flutter/material.dart';
import 'package:flutter_application_3/widgets/customer_details_panel.dart';

import 'booking_details_panel.dart';

class AddCustomerPanel extends StatefulWidget {
  const AddCustomerPanel({
    Key? key,
  }) : super(key: key);

  @override
  State<AddCustomerPanel> createState() => _AddCustomerPanelState();
}

class _AddCustomerPanelState extends State<AddCustomerPanel> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width - 250,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 40),
            child: SizedBox(
              height: 50,
              width: size.width - 250,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: () => setState(() {
                        selectedIndex = 0;
                      }),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            '    Booking Details    ',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: selectedIndex == 0
                                  ? Theme.of(context).indicatorColor
                                  : Theme.of(context).errorColor,
                            ),
                          ),
                          Container(
                            margin:
                                const EdgeInsets.only(top: 5), //top padding 5
                            height: 2,
                            width: 100,
                            color: selectedIndex == 0
                                ? Colors.black
                                : Colors.transparent,
                          ),
                        ],
                      ),
                    ),
                    GestureDetector(
                      onTap: () => setState(() {
                        selectedIndex = 1;
                      }),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            '    Customer Details    ',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: selectedIndex == 1
                                  ? Theme.of(context).indicatorColor
                                  : Theme.of(context).errorColor,
                            ),
                          ),
                          Container(
                            margin:
                                const EdgeInsets.only(top: 5), //top padding 5
                            height: 2,
                            width: 100,
                            color: selectedIndex == 1
                                ? Colors.black
                                : Colors.transparent,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 80,
          ),
          (selectedIndex == 0) ? const BookingDetailsPanel() : Container(),
          (selectedIndex == 1) ? const CustomerDetailsPanel() : Container(),
        ],
      ),
    );
  }
}
