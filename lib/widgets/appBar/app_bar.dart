import 'package:flutter/material.dart';
import 'package:vet_app/constants/colors.dart';
import 'package:vet_app/pages/notification_page.dart';

AppBar appBar(
    {bool withIcons = true,
    required GlobalKey<ScaffoldState> key,
    required BuildContext context}) {
  return AppBar(
    backgroundColor: appBarColor,
    leading: Container(
      child: Image.asset("assets/images/logoIcon.png"),
      margin: const EdgeInsets.all(8.0),
    ),
    title: const Text(
      "VET CLINIC STAFF",
      style: TextStyle(color: Colors.black),
    ),
    actions: withIcons
        ? <Widget>[
            IconButton(
              icon: const Icon(
                Icons.notifications_none_outlined,
                color: Colors.black,
                size: 32,
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const NotificationPage()),
                );
              },
            ),
            IconButton(
              icon: const Icon(
                Icons.menu,
                color: Colors.black,
                size: 32,
              ),
              onPressed: () {
                key.currentState?.openEndDrawer();
              },
            )
          ]
        : [
            IconButton(
              icon: const Icon(
                Icons.menu,
                color: Colors.transparent,
                size: 32,
              ),
              onPressed: () {},
            )
          ],
  );
}
