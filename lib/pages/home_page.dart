import 'package:flutter/material.dart';
import 'package:vet_app/constants/colors.dart';
import 'package:vet_app/widgets/appBar/app_bar.dart';
import 'package:vet_app/widgets/menu/menu.dart';
import 'package:vet_app/widgets/page/home_page_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _scaffoldKey = GlobalKey<ScaffoldState>();

    return Scaffold(
      key: _scaffoldKey,
      appBar: appBar(key: _scaffoldKey, context: context),
      endDrawer: const Menu(active: 0),
      backgroundColor: mainBackgroundColor,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            homePageCard(
                context: context,
                image: "assets/images/card1.png",
                title: "Easy Appointment",
                description:
                    "Nam libero tempore, cum soluta nobis. Need to be corrected!"),
            homePageCard(
                context: context,
                image: "assets/images/card2.png",
                title: "Virtual Consultation",
                description:
                    "Nam libero tempore, cum soluta nobis. Need to be corrected!"),
            homePageCard(
                context: context,
                image: "assets/images/card3.png",
                title: "Lorem Ipsum",
                description:
                    "Nam libero tempore, cum soluta nobis. Need to be corrected!"),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: 50,
        color: appBarColor,
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
