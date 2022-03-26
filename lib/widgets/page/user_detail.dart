import 'package:flutter/material.dart';
import 'package:vet_app/widgets/menu/menu_item_separator.dart';

///
/// this function needs rewriting
/// because it doesn't use real user data
/// currently everything is hardcoded
///

Column userDetails() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      rowBuilder("Name", "Client's name"),
      rowBuilder("Phone No", "+998 99 444 34 54"),
      rowBuilder("Email", "username@gmail.com"),
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 5),
        child: menuItemSeparator(),
      ),
      const Text(
        "1. Pet Name",
        style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w500,
            color: Color(0xff6F6D6A)),
        textAlign: TextAlign.left,
      ),
      rowBuilder("Pet Name", "Pet Name"),
      rowBuilder("Pet Type", "Pet Type"),
      const SizedBox(
        height: 10,
      ),
      const Text(
        "2. Pet Name",
        style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w500,
            color: Color(0xff6F6D6A)),
        textAlign: TextAlign.left,
      ),
      rowBuilder("Pet Name", "Pet Name"),
      rowBuilder("Pet Type", "Pet Type"),
    ],
  );
}

Row rowBuilder(String key, String value) {
  return Row(
    children: <Widget>[
      Text(
        "$key: ",
        style: const TextStyle(fontSize: 12, fontWeight: FontWeight.w700),
      ),
      Text(
        value,
        style: const TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w500,
            fontStyle: FontStyle.italic,
            color: Color(0xff6F6D6A)),
      ),
    ],
  );
}
