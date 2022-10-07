
import 'package:flutter/material.dart';

import 'MyFrame.dart';

class MyCardWidget extends StatelessWidget {
  const MyCardWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: const [
        MyFrame(
          title: "Request",
          image: "assets/Login.png",
          subtitle: "Lorem ipsum",
        ),
        MyFrame(
          image: "assets/3 User.png",
          title: "Contact",
          subtitle: "Lorem ipsum",
        ),
      ],
    );
  }
}
