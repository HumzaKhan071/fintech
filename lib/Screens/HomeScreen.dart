import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'Widgets/MyCardContainer.dart';
import 'Widgets/MyCardWidget.dart';
import 'Widgets/MyCardWidget1.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Welcome back,',
                style: GoogleFonts.plusJakartaSans(
                  color: Color(0xff9CA4AB),
                  fontSize: 12,
                ),
              ),
              Text(
                'Aelita Thompson',
                style: GoogleFonts.plusJakartaSans(
                  color: Color(0xff1F2C37),
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          leading: Image.asset('assets/avatar1.png'),
          actions: [
            Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.grey)),
                child: Image.asset("assets/Notification.png")),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: const [
                    MyCardContainer(
                        text: "X-card",
                        balance: "\$ 4.664,63",
                        linearColor1: Color(0xff585858),
                        linearColor2: Color(0xff1F2C37)),
                    SizedBox(
                      width: 10,
                    ),
                    MyCardContainer(
                        text: "M-card",
                        balance: "\$ 5.664,89",
                        linearColor1: Color(0xffB51037),
                        linearColor2: Color(0xff1F2C37))
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Center(
                child: Container(
                  height: 8,
                  width: 16,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Color(0xff980000)),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              MyCardWidget1(),
              SizedBox(
                height: 15,
              ),
              MyCardWidget(),
            ],
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: Color(0xff980000),
          child: Container(
            height: 50,
            width: 50,
            decoration:
                BoxDecoration(shape: BoxShape.circle, color: Color(0xff980000)),
            child: Image.asset("assets/Plus.png"),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            iconSize: 20,
            selectedItemColor: Color(0xff980000),
            unselectedItemColor: Color(0xff9CA4AB),
            items: [
              BottomNavigationBarItem(
                icon: Image.asset("assets/Home.png"),
                label: "Home",
              ),
              BottomNavigationBarItem(
                icon: Image.asset("assets/Chart.png"),
                label: "Statistics",
              ),
              // BottomNavigationBarItem(
              //   icon: Container(
              //     height: 50,
              //     width: 50,
              //     decoration: BoxDecoration(
              //         shape: BoxShape.circle,
              //         color: Color(0xff980000)
              //         ),
              //     child: Image.asset("assets/Plus.png"),

              //   ),
              //   label: "Settings",
              // ),
              BottomNavigationBarItem(
                icon: Image.asset("assets/Wallet_Bottom.png"),
                label: "My Card",
              ),
              BottomNavigationBarItem(
                icon: Image.asset("assets/Profile.png"),
                label: "Profile",
              ),
            ]));
  }
}
