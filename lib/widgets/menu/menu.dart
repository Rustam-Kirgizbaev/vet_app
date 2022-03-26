import 'package:flutter/material.dart';
import 'package:vet_app/constants/colors.dart';
import 'package:vet_app/pages/account_page.dart';
import 'package:vet_app/pages/client_page.dart';
import 'package:vet_app/pages/home_page.dart';
import 'package:vet_app/pages/login_page.dart';
import 'package:vet_app/widgets/menu/menu_header.dart';
import 'package:vet_app/widgets/menu/menu_item.dart';
import 'package:vet_app/widgets/menu/menu_item_separator.dart';

class Menu extends StatelessWidget {
  final int active;
  const Menu({Key? key, required this.active}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
        backgroundColor: mainBackgroundColor,
        child: Column(
          children: <Widget>[
            menuHeader(context: context),
            menuItemSeparator(),
            menuItemBuilder("assets/images/home.png", "Home", active == 0, (() {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const HomePage()),
              );
            })),
            menuItemSeparator(),
            menuItemBuilder(
                "assets/images/veterinary.png", "My Account", active == 1, (() {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const AccountPage()),
              );
            })),
            menuItemSeparator(),
            menuItemBuilder("assets/images/user.png", "My Clients", active == 2,
                (() {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const ClientPage()),
              );
            })),
            menuItemSeparator(),
            menuItemBuilder("assets/images/log-out.png", "Log Out", active == 3,
                (() {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const LoginPage()),
              );
            })),
            menuItemSeparator(),
            const SizedBox(
              height: 250,
            ),
            Center(
                child: Image.asset(
              "assets/images/kitten.png",
              width: 200,
              height: 200,
            ))
          ],
        ));
  }
}
