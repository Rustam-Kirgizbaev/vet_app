import 'package:flutter/material.dart';

Container menuItemSeparator() {
  return Container(
      margin: const EdgeInsets.symmetric(vertical: 2.0, horizontal: 10.0),
      height: 3,
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(50)),
          color: Colors.black));
}
