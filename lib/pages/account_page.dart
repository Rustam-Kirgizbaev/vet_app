import 'package:flutter/material.dart';
import 'package:vet_app/constants/colors.dart';
import 'package:vet_app/widgets/appBar/app_bar.dart';
import 'package:vet_app/widgets/menu/menu.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _scaffoldKey = GlobalKey<ScaffoldState>();

    return Scaffold(
      key: _scaffoldKey,
      appBar: appBar(key: _scaffoldKey, context: context),
      endDrawer: const Menu(active: 1),
      backgroundColor: mainBackgroundColor,
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            const SizedBox(height: 30.0),
            const Text(
              "My Account",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 30.0, horizontal: 60.0),
              child: Column(children: <Widget>[
                Center(
                  child: Image.asset(
                    "assets/images/avatar.png",
                    height: 150,
                    width: 150,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  decoration:
                      BoxDecoration(border: Border.all(), color: appBarColor),
                  child: Column(
                    children: <Widget>[
                      const SizedBox(
                        height: 40,
                        child: Center(
                          child: Text(
                            "First Staff",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      Container(
                        decoration: const BoxDecoration(
                            border: Border(top: BorderSide()),
                            color: Colors.white),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text(
                                "Staff id: #1",
                                style: TextStyle(fontSize: 12),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 8),
                              child: RichText(
                                text: const TextSpan(
                                  // Note: Styles for TextSpans must be explicitly defined.
                                  // Child text spans will inherit styles from parent
                                  style: TextStyle(
                                    fontSize: 14.0,
                                    color: Colors.black,
                                  ),
                                  children: <TextSpan>[
                                    TextSpan(
                                        text: 'EDUCATION : ',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold)),
                                    TextSpan(
                                        text:
                                            'Lorem ipsum university, Tashkent, Uzbekistan',
                                        style: TextStyle(
                                            fontStyle: FontStyle.italic)),
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 8),
                              child: RichText(
                                text: const TextSpan(
                                  // Note: Styles for TextSpans must be explicitly defined.
                                  // Child text spans will inherit styles from parent
                                  style: TextStyle(
                                    fontSize: 14.0,
                                    color: Colors.black,
                                  ),
                                  children: <TextSpan>[
                                    TextSpan(
                                        text: 'EXPERIENCE : ',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold)),
                                    TextSpan(
                                        text: '2 years in Lorem ipsum',
                                        style: TextStyle(
                                            fontStyle: FontStyle.italic)),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      singleColumn("Username", "firststaff"),
                      singleColumn("Email", "firststaff@gmail.com"),
                      singleColumn("Phone No", "+998 97 888 88 88"),
                      singleColumn("Date of birth", "27.01.1981"),
                      singleColumn("Field", "Dentistry"),
                    ],
                  ),
                )
              ]),
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

Container singleColumn(String key, String value) {
  return Container(
    height: 40,
    decoration: const BoxDecoration(
        border: Border(top: BorderSide()), color: Colors.white),
    child: rowBuilder(key, value),
  );
}

Padding rowBuilder(String key, String value) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Row(
      children: <Widget>[
        Text(
          "$key: ",
          style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w700),
        ),
        Text(
          value,
          style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color: Color(0xff6F6D6A)),
        ),
      ],
    ),
  );
}
