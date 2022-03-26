import 'package:flutter/material.dart';
import 'package:vet_app/constants/colors.dart';
import 'package:vet_app/functions/auth.dart';
import 'package:vet_app/pages/home_page.dart';
import 'package:vet_app/widgets/appBar/app_bar.dart';
import 'package:vet_app/widgets/page/password_box.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _scaffoldKey = GlobalKey<ScaffoldState>();
    TextEditingController passwordController = TextEditingController();
    TextEditingController usernameController = TextEditingController();

    return Scaffold(
      key: _scaffoldKey,
      appBar: appBar(key: _scaffoldKey, withIcons: false, context: context),
      backgroundColor: mainBackgroundColor,
      body: SingleChildScrollView(
        child: Column(children: <Widget>[
          const SizedBox(
            height: 70,
          ),
          const Center(
            child: Text(
              "LOGIN",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50),
            child: TextField(
              controller: usernameController,
              decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.person_outline),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50.0),
                  ),
                  filled: true,
                  hintStyle: TextStyle(color: Colors.grey[800]),
                  hintText: "Username",
                  fillColor: Colors.white70),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50.0),
            child: PasswordBox(
              controller: passwordController,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 50.0),
            child: Align(
              alignment: Alignment.centerLeft,
              child: GestureDetector(
                onTap: () {
                  showDialog(
                      context: context,
                      builder: (_) => const AlertDialog(
                          title: Text("Forgot password?"),
                          content: Text(
                              "In case you forgot your password, please, contact your administrator")));
                },
                child: const Text(
                  "Forgot password?",
                  style: TextStyle(color: Color(0xff494846), fontSize: 14.0),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Center(
            child: SizedBox(
              height: 50,
              width: 200,
              child: FlatButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50)),
                onPressed: () {
                  if (authenticate(
                      usernameController.text, passwordController.text)) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const HomePage()),
                    );
                  } else {
                    usernameController.text = passwordController.text = "";
                    showDialog(
                        context: context,
                        builder: (_) => const AlertDialog(
                            title: Text("Incorrect input!"),
                            content: Text(
                                "Incorrect username or password. Please try again")));
                  }
                },
                child: Container(
                  height: double.infinity,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: appBarColor),
                  child: const Center(
                    child: Text(
                      "Login",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 70),
          Center(
              child: Image.asset(
            "assets/images/kitten.png",
            width: 200,
            height: 200,
          ))
        ]),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
