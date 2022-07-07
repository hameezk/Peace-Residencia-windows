import 'package:flutter/material.dart';
import 'package:flutter_application_3/widgets/button_bar.dart';
import 'package:google_fonts/google_fonts.dart';

class BookingDetailsPanel extends StatefulWidget {
  const BookingDetailsPanel({
    Key? key,
  }) : super(key: key);

  @override
  State<BookingDetailsPanel> createState() => _BookingDetailsPanelState();
}

class _BookingDetailsPanelState extends State<BookingDetailsPanel> {
  List<String> plotSizes = ["5 Marhala", "7 Marhala", "10 Marhala", "1 Kanal"];
  String? plotSize;
  List<String> catogories = [
    "Residential",
    "Commercial",
  ];
  String? catagory;
  @override
  Widget build(BuildContext context) {
    
    return Container(
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(
          Radius.circular(30),
        ),
        color: Theme.of(context).canvasColor,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 40),
        child: Column(
          children: [
            Text(
              "Booking Details",
              style: GoogleFonts.mulish(
                fontSize: 20.0,
                fontWeight: FontWeight.w700,
                color: Theme.of(context).indicatorColor,
              ),
            ),
            const SizedBox(
              height: 35,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'Registration Form #:  ',
                  textAlign: TextAlign.left,
                  style: GoogleFonts.mulish(
                    fontSize: 16.0,
                    fontWeight: FontWeight.w700,
                    color: Theme.of(context).indicatorColor,
                  ),
                ),
                SizedBox(
                  width: 300,
                  child: Text(
                    'PR202578',
                    textAlign: TextAlign.right,
                    style: GoogleFonts.mulish(
                      fontSize: 14.0,
                      fontWeight: FontWeight.w500,
                      color: Theme.of(context).errorColor,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'Registration #:  ',
                  textAlign: TextAlign.left,
                  style: GoogleFonts.mulish(
                    fontSize: 16.0,
                    fontWeight: FontWeight.w700,
                    color: Theme.of(context).indicatorColor,
                  ),
                ),
                SizedBox(
                  width: 300,
                  child: Text(
                    'PR13Y97f260',
                    textAlign: TextAlign.right,
                    style: GoogleFonts.mulish(
                      fontSize: 14.0,
                      fontWeight: FontWeight.w500,
                      color: Theme.of(context).errorColor,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'Security #:  ',
                  textAlign: TextAlign.left,
                  style: GoogleFonts.mulish(
                    fontSize: 16.0,
                    fontWeight: FontWeight.w700,
                    color: Theme.of(context).indicatorColor,
                  ),
                ),
                SizedBox(
                  width: 300,
                  child: Text(
                    'ABN4498132',
                    textAlign: TextAlign.right,
                    style: GoogleFonts.mulish(
                      fontSize: 14.0,
                      fontWeight: FontWeight.w500,
                      color: Theme.of(context).errorColor,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'Catagory:  ',
                  textAlign: TextAlign.left,
                  style: GoogleFonts.mulish(
                    fontSize: 16.0,
                    fontWeight: FontWeight.w700,
                    color: Theme.of(context).indicatorColor,
                  ),
                ),
                SizedBox(
                  width: 300,
                  child: DropdownButtonHideUnderline(
                    child: DropdownButton<String>(
                      isExpanded: true,
                      hint: const Text("Select PLot Size"),
                      value: catagory,
                      items: catogories.map(buildCatagory).toList(),
                      onChanged: (value) => setState(
                        () {
                          catagory = value;
                        },
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'Plot Size:  ',
                  style: GoogleFonts.mulish(
                    fontSize: 16.0,
                    fontWeight: FontWeight.w700,
                    color: Theme.of(context).indicatorColor,
                  ),
                ),
                SizedBox(
                  width: 300,
                  child: DropdownButtonHideUnderline(
                    child: DropdownButton<String>(
                      isExpanded: true,
                      hint: const Text("Select PLot Size"),
                      value: plotSize,
                      items: plotSizes.map(buildPlotSize).toList(),
                      onChanged: (value) => setState(
                        () {
                          plotSize = value;
                        },
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 35,
            ),
            const MyButtonBar(selectedIndex: 0,),
          ],
        ),
      ),
    );
  }

  DropdownMenuItem<String> buildPlotSize(String item) => DropdownMenuItem(
        value: item,
        child: Text(
          item,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
      );

  DropdownMenuItem<String> buildCatagory(String item) => DropdownMenuItem(
        value: item,
        child: Text(
          item,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
      );
}

