import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyButtonBar extends StatelessWidget {
  final int selectedIndex;
  const MyButtonBar({
    Key? key,
    required this.selectedIndex,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        const SizedBox(
          width: 250,
        ),
        Container(
          decoration: BoxDecoration(
              border: Border.all(),
              borderRadius: const BorderRadius.all(Radius.circular(12))),
          child: TextButton(
            onPressed: () {},
            child: Text(
              '   Previous   ',
              style: GoogleFonts.mulish(
                fontSize: 14.0,
                fontWeight: FontWeight.w700,
                color: Theme.of(context).indicatorColor,
              ),
            ),
          ),
        ),
        const SizedBox(
          width: 15,
        ),
        Container(
          decoration: BoxDecoration(
              border: Border.all(),
              borderRadius: const BorderRadius.all(Radius.circular(12))),
          child: TextButton(
            onPressed: () {},
            child: Text(
              '      Next      ',
              style: GoogleFonts.mulish(
                fontSize: 14.0,
                fontWeight: FontWeight.w700,
                color: Theme.of(context).indicatorColor,
              ),
            ),
          ),
        ),
        const SizedBox(
          width: 15,
        ),
      ],
    );
  }
}
