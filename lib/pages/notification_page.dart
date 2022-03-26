import 'package:flutter/material.dart';
import 'package:vet_app/constants/colors.dart';
import 'package:vet_app/widgets/appBar/app_bar.dart';
import 'package:vet_app/widgets/menu/menu.dart';
import 'package:vet_app/widgets/page/expandable_panel.dart';

List<String> titles = ["Title 1", "Title 2", "Title 3", "Title 4"];

class NotificationPage extends StatelessWidget {
  const NotificationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _scaffoldKey = GlobalKey<ScaffoldState>();
    final List<Widget> notifications = [];

    for (int i = 0; i < titles.length; i++) {
      notifications.add(ExpandablePanel(
          title: titles[i],
          expanded: Container(
            decoration: BoxDecoration(
                border: Border.all(color: Colors.black, width: 1.0)),
            child: const Padding(
              padding: EdgeInsets.only(
                  top: 8.0, bottom: 8.0, left: 12.0, right: 8.0),
              child: Text(
                  "Endi odamla shu joyda nimadir qizuro narsa koraman deb ne-ne umidlada ochadda..."),
            ),
          )));
    }

    return Scaffold(
      key: _scaffoldKey,
      appBar: appBar(key: _scaffoldKey, context: context),
      endDrawer: const Menu(active: 5),
      backgroundColor: mainBackgroundColor,
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            const SizedBox(height: 50.0),
            const Text(
              "Notifications",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Padding(
              padding: const EdgeInsets.all(50.0),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[...notifications]),
            ),
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
