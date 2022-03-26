import 'package:flutter/material.dart';
import 'package:vet_app/constants/colors.dart';

GestureDetector menuItemBuilder(
    String image, String text, bool isActive, VoidCallback callback) {
  return GestureDetector(
    onTap: callback,
    child: Container(
      margin: const EdgeInsets.symmetric(horizontal: 10.0),
      height: 35,
      decoration: isActive
          ? BoxDecoration(
              border: Border.all(width: 1.0, color: Colors.black),
              borderRadius: const BorderRadius.all(Radius.circular(18)),
              color: currentMenuItem)
          : null,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Text(
            text,
            style: const TextStyle(
                color: Colors.black, fontSize: 14, fontWeight: FontWeight.w700),
          ),
          const SizedBox(width: 20),
          Image.asset(
            image,
            height: 20,
            width: 20,
          ),
          const SizedBox(
            width: 10,
          ),
        ],
      ),
    ),
  );
}
