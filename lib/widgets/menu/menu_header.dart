import 'package:flutter/material.dart';

Container menuHeader({required BuildContext context}) {
  return Container(
      margin: const EdgeInsets.only(top: 30, left: 10, right: 10),
      child: Row(
        children: <Widget>[
          IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Image.asset(
              "assets/images/x.png",
              height: 40,
              width: 40,
            ),
          ),
          const SizedBox(
            width: 60,
          ),
          const Text(
            "Menu",
            style: TextStyle(
                fontSize: 20, color: Colors.black, fontWeight: FontWeight.bold),
          )
        ],
      ));
}
