import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyFrame extends StatelessWidget {
  final String image;
  final String title;
  final String subtitle;
  const MyFrame({
    Key? key,
    required this.image,
    required this.title,
    required this.subtitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 140,
      width: 156,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: Color(0xff1F2C37))),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xffECF1F6)),
                child: Image.asset(image)),
            SizedBox(
              height: 10,
            ),
            Text(
              title,
              style: GoogleFonts.plusJakartaSans(
                color: Color(0xff1F2C37),
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              subtitle,
              style: GoogleFonts.plusJakartaSans(
                color: Color(0xff9CA4AB),
                fontSize: 12,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
