import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'HomeScreen.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  final _formKey = GlobalKey<FormState>();
  bool valueBox = false;
  bool valueObsecure = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScopeNode currentFocus = FocusScope.of(context);

        if (!currentFocus.hasPrimaryFocus) {
          currentFocus.unfocus();
        }
      },
      child: Scaffold(
        backgroundColor: const Color(0xffFDFDFD),
        body: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: SafeArea(
                child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AppBar(
                    elevation: 0,
                    backgroundColor: const Color(0xffFDFDFD),
                    leading: Container(
                      height: 40,
                      width: 40,
                      decoration: const BoxDecoration(
                        border: Border(
                          top: BorderSide(width: 1.0, color: Color(0xffE3E9ED)),
                          left:
                              BorderSide(width: 1.0, color: Color(0xffE3E9ED)),
                          right:
                              BorderSide(width: 1.0, color: Color(0xffE3E9ED)),
                          bottom:
                              BorderSide(width: 1.0, color: Color(0xffE3E9ED)),
                        ),
                        shape: BoxShape.circle,
                      ),
                      child: const Icon(
                        Icons.arrow_back_ios,
                        color: Color(0xff1F2C37),
                      ),
                    ),
                    title: Text(
                      'Sign In',
                      style: GoogleFonts.plusJakartaSans(
                        color: Color(0xff1F2C37),
                        fontSize: 26,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Hi, Welcome Back! 👋",
                    style: GoogleFonts.plusJakartaSans(
                      color: const Color(0xff1F2C37),
                      fontSize: 26,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "Lorem ipsum dolor sit amet, consectetur",
                    maxLines: 1,
                    style: GoogleFonts.plusJakartaSans(
                        fontSize: 22, color: Color(0xff78828A)),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    "Email Address",
                    style: GoogleFonts.plusJakartaSans(
                      color: const Color(0xff1F2C37),
                      fontSize: 22,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                    height: 70,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: const Color(0xffE3E9ED),
                      ),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(5),
                      child: TextFormField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Enter your email",
                          hintStyle: GoogleFonts.plusJakartaSans(
                            color: Color(0xff78828A),
                            fontSize: 14,
                          ),
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Please enter some text';
                          } else if (value != "admin") {
                            return 'Please enter valid email';
                          }
                          return null;
                        },
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Password",
                    style: GoogleFonts.plusJakartaSans(
                      color: const Color(0xff1F2C37),
                      fontSize: 22,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                    height: 70,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: const Color(0xffE3E9ED),
                      ),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(5),
                      child: TextFormField(
                        obscureText: valueObsecure,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Enter your password",
                          hintStyle: GoogleFonts.plusJakartaSans(
                            color: Color(0xff78828A),
                            fontSize: 14,
                          ),
                          suffixIcon: !valueObsecure
                              ? IconButton(
                                  onPressed: () {
                                    setState(() {
                                      valueObsecure = true;
                                    });
                                  },
                                  icon: Icon(
                                    Icons.visibility,
                                    color: Color(0xff1F2C37),
                                  ),
                                )
                              : IconButton(
                                  onPressed: () {
                                    setState(() {
                                      valueObsecure = false;
                                    });
                                  },
                                  icon: Icon(
                                    Icons.visibility_off,
                                    color: Color(0xff1F2C37),
                                  ),
                                ),
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Please enter password';
                          } else if (value != "123456") {
                            return 'Please enter valid password';
                          }

                          return null;
                        },
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Checkbox(
                              fillColor:
                                  MaterialStateProperty.all(Color(0xff980000)),
                              value: valueBox,
                              onChanged: ((valueBox) {
                                setState(() {
                                  this.valueBox = valueBox!;
                                });
                              })),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "Remember me",
                            style: GoogleFonts.plusJakartaSans(
                              color: const Color(0xff1F2C37),
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                      Text(
                        "Forgot Password?",
                        style: GoogleFonts.plusJakartaSans(
                          color: const Color(0xffFF3838),
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  InkWell(
                    onTap: () {
                      if (_formKey.currentState!.validate()) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                              content: Text('Successfully Logged In')),
                        );
                        Navigator.push(context,
                            MaterialPageRoute(builder: (_) => HomeScreen()));
                      } else if (_formKey.currentState!.validate() == false &&
                          valueBox == false) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                              content: Text('Please enter valid credentials')),
                        );
                      }
                    },
                    child: Container(
                      height: 60,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: const Color(0xff980000),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Center(
                        child: Text(
                          "Sign In",
                          style: GoogleFonts.plusJakartaSans(
                            color: const Color(0xffFDFDFD),
                            fontSize: 22,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Don't have an account?",
                        style: GoogleFonts.plusJakartaSans(
                          color: const Color(0xff1F2C37),
                          fontSize: 14,
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Sign Up",
                        style: GoogleFonts.plusJakartaSans(
                          color: const Color(0xffFF3838),
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Or Sign In With",
                        style: GoogleFonts.plusJakartaSans(
                          color: const Color(0xff1F2C37),
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                          color: const Color(0xffECF1F6),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Center(
                          child: Image.asset(
                            "assets/Google.png",
                            height: 30,
                            width: 30,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                          color: const Color(0xffECF1F6),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Center(
                          child: Image.asset(
                            "assets/Apple.png",
                            height: 30,
                            width: 30,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                          color: const Color(0xffECF1F6),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Center(
                          child: Image.asset(
                            "assets/Facebook.png",
                            height: 30,
                            width: 30,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            )),
          ),
        ),
      ),
    );
  }
}
