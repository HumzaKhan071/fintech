
import 'package:flutter/material.dart';

import '../SendMoney.dart';
import 'MyFrame.dart';

class MyCardWidget1 extends StatelessWidget {
  const MyCardWidget1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children:  [
        InkWell(
          onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (_)=>SendMoney()));
          },
          child: MyFrame(
            title: "Send Money",
            image: "assets/Send.png",
            subtitle: "Send acc to acc",
          ),
        ),
        MyFrame(
          image: "assets/Wallet.png",
          title: "Pay the Bill",
          subtitle: "Lorem ipsum",
        ),
      ],
    );
  }
}
