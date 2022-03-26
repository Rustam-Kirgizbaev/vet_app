import 'package:flutter/material.dart';
import 'package:vet_app/constants/colors.dart';
import 'package:vet_app/widgets/appBar/app_bar.dart';
import 'package:vet_app/widgets/menu/menu.dart';
import 'package:vet_app/widgets/page/expandable_panel.dart';
import 'package:vet_app/widgets/page/user_detail.dart';

List<String> clients = [
  "Client 1",
  "Client 2",
  "Client 3",
  "Client 4",
  "Client 5"
];

class ClientPage extends StatelessWidget {
  const ClientPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _scaffoldKey = GlobalKey<ScaffoldState>();
    final List<Widget> clientData = [];

    for (int i = 0; i < clients.length; i++) {
      clientData.add(ExpandablePanel(
          title: clients[i],
          expanded: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.black, width: 1.0)),
              child: Padding(
                padding: const EdgeInsets.only(
                    top: 8.0, bottom: 8.0, left: 12.0, right: 8.0),
                child: userDetails(),
              ))));
    }

    return Scaffold(
      key: _scaffoldKey,
      appBar: appBar(key: _scaffoldKey, context: context),
      endDrawer: const Menu(active: 2),
      backgroundColor: mainBackgroundColor,
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            const SizedBox(height: 50.0),
            const Text(
              "Clients",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Padding(
              padding: const EdgeInsets.all(50.0),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[...clientData]),
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
