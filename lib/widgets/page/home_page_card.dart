import 'package:flutter/material.dart';

Stack homePageCard(
    {required BuildContext context,
    required String image,
    required String title,
    required String description}) {
  return Stack(
    children: <Widget>[
      Column(
        children: <Widget>[
          Container(
            margin: const EdgeInsets.only(top: 20),
            height: 50,
          ),
          Container(
            height: 140,
            margin: const EdgeInsets.only(right: 35, left: 35),
            decoration: BoxDecoration(
                border: Border.all(color: Colors.black, width: 1.0),
                borderRadius: BorderRadius.circular(40)),
            child: Column(
              children: <Widget>[
                const SizedBox(
                  height: 60,
                ),
                Center(
                  child: Text(
                    title,
                    style: const TextStyle(
                        fontSize: 14, fontWeight: FontWeight.w500),
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                Center(
                  child: Text(
                    description,
                    style: const TextStyle(fontSize: 12),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
      Positioned(
        child: CircleAvatar(
          radius: 51,
          backgroundColor: Colors.black,
          child: CircleAvatar(
            radius: 50,
            backgroundColor: Colors.white,
            backgroundImage: AssetImage(image),
          ),
        ),
        left: (MediaQuery.of(context).size.width / 2) - 50,
        top: 20,
      )
    ],
  );
}
