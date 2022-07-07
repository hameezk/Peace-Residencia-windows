import 'package:flutter/material.dart';
import 'package:flutter_application_3/widgets/button_bar.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomerDetailsPanel extends StatelessWidget {
  const CustomerDetailsPanel({
    Key? key,
  }) : super(key: key);

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
              "Customer Details",
              style: GoogleFonts.mulish(
                fontSize: 20.0,
                fontWeight: FontWeight.w700,
                color: Theme.of(context).indicatorColor,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'Name:  ',
                  style: GoogleFonts.mulish(
                    fontSize: 16.0,
                    fontWeight: FontWeight.w700,
                    color: Theme.of(context).indicatorColor,
                  ),
                ),
                SizedBox(
                  width: 350,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12.0),
                    child: TextField(
                      style: GoogleFonts.mulish(
                        fontSize: 14.0,
                        fontWeight: FontWeight.w500,
                        color: Theme.of(context).errorColor,
                      ),
                      cursorColor: Colors.black87,
                      minLines: 1,
                      maxLines: 2,
                      decoration: const InputDecoration(
                        border: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.black38,
                          ),
                        ),
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
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'CNIC #:  ',
                  style: GoogleFonts.mulish(
                    fontSize: 16.0,
                    fontWeight: FontWeight.w700,
                    color: Theme.of(context).indicatorColor,
                  ),
                ),
                SizedBox(
                  width: 350,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12.0),
                    child: TextField(
                      style: GoogleFonts.mulish(
                        fontSize: 14.0,
                        fontWeight: FontWeight.w500,
                        color: Theme.of(context).errorColor,
                      ),
                      cursorColor: Colors.black87,
                      minLines: 1,
                      maxLines: 2,
                      decoration: const InputDecoration(
                        border: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.black38,
                          ),
                        ),
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
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'Contact #:  ',
                  style: GoogleFonts.mulish(
                    fontSize: 16.0,
                    fontWeight: FontWeight.w700,
                    color: Theme.of(context).indicatorColor,
                  ),
                ),
                SizedBox(
                  width: 350,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12.0),
                    child: TextField(
                      style: GoogleFonts.mulish(
                        fontSize: 14.0,
                        fontWeight: FontWeight.w500,
                        color: Theme.of(context).errorColor,
                      ),
                      cursorColor: Colors.black87,
                      minLines: 1,
                      maxLines: 2,
                      decoration: const InputDecoration(
                        border: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.black38,
                          ),
                        ),
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
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'Address:  ',
                  style: GoogleFonts.mulish(
                    fontSize: 16.0,
                    fontWeight: FontWeight.w700,
                    color: Theme.of(context).indicatorColor,
                  ),
                ),
                SizedBox(
                  width: 350,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12.0),
                    child: TextField(
                      style: GoogleFonts.mulish(
                        fontSize: 14.0,
                        fontWeight: FontWeight.w500,
                        color: Theme.of(context).errorColor,
                      ),
                      cursorColor: Colors.black87,
                      minLines: 1,
                      maxLines: 3,
                      decoration: const InputDecoration(
                        border: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.black38,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 35,
            ),
            const MyButtonBar(
              selectedIndex: 1,
            ),
          ],
        ),
      ),
    );
  }
}
