import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SendMoney extends StatelessWidget {
  const SendMoney({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFDFDFD),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color(0xffFDFDFD),
        leading: Container(
          height: 40,
          width: 40,
          decoration: const BoxDecoration(
            border: Border(
              top: BorderSide(width: 1.0, color: Color(0xffE3E9ED)),
              left: BorderSide(width: 1.0, color: Color(0xffE3E9ED)),
              right: BorderSide(width: 1.0, color: Color(0xffE3E9ED)),
              bottom: BorderSide(width: 1.0, color: Color(0xffE3E9ED)),
            ),
            shape: BoxShape.circle,
          ),
          child: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back_ios),
            color: Color(0xff1F2C37),
          ),
        ),
        centerTitle: true,
        title: Text(
          "SendMoney",
          style: GoogleFonts.plusJakartaSans(
            color: Color(0xff1F2C37),
            fontSize: 26,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
                child: Column(
              children: [
                Image.asset("assets/avatar2.png"),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Andy",
                  style: GoogleFonts.plusJakartaSans(
                    color: Color(0xff1F2C37),
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text("BCA • 2468 7645 6346",
                    style: GoogleFonts.plusJakartaSans(
                      color: Color(0xff9CA4AB),
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    )),
              ],
            )),
            SizedBox(
              height: 20,
            ),
            Text("Amount:",
                style: GoogleFonts.plusJakartaSans(
                  color: Color(0xff1F2C37),
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                )),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 80,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color(0xffFDFDFD),
                border: Border.all(color: Color(0xffE3E9ED)),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                        height: 50,
                        width: 140,
                        decoration: BoxDecoration(
                          color: Color(0xffECF1F6),
                          border: Border.all(color: Color(0xffECF1F6)),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                height: 30,
                                width: 30,
                                decoration: BoxDecoration(
                                  color: Color(0xff980000),
                                  border: Border.all(color: Color(0xff980000)),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Center(
                                    child: Text(
                                  "\$",
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                )),
                              ),
                              Text(
                                "USD",
                                style: GoogleFonts.plusJakartaSans(
                                  color: Color(0xff1F2C37),
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Icon(
                                Icons.arrow_drop_down,
                                size: 40,
                                color: Colors.black,
                              ),
                            ],
                          ),
                        )),
                    Text("\$154,42",
                        style: GoogleFonts.plusJakartaSans(
                          color: Color(0xff1F2C37),
                          fontSize: 26,
                          fontWeight: FontWeight.bold,
                        )),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text("Message:",
                style: GoogleFonts.plusJakartaSans(
                  color: Color(0xff1F2C37),
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                )),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 200,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color(0xffFDFDFD),
                border: Border.all(color: Color(0xffE3E9ED)),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  children: [
                    TextField(
                      decoration: InputDecoration(
                        hintText: "Type your message here",
                        hintStyle: GoogleFonts.plusJakartaSans(
                          color: Color(0xff9CA4AB),
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                        border: InputBorder.none,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Center(
              child: Container(
                height: 60,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Color(0xff980000),
                  border: Border.all(color: Color(0xff980000)),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Center(
                    child: Text(
                  "Send Money",
                  style: GoogleFonts.plusJakartaSans(
                    color: Colors.white,
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                  ),
                )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
