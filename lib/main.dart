import 'package:flutter/material.dart';
import 'package:portfolio_new/cards/leetcode.dart';
import 'package:portfolio_new/controller/leetcode_model.dart';
import 'package:portfolio_new/header/components/drawer.dart';
import 'package:portfolio_new/header/header.dart';
import 'package:portfolio_new/homepage.dart';
import 'package:url_launcher/url_launcher.dart';

import 'header/components/navbar_logo.dart';

final Uri _url = Uri.parse(
    'https://drive.google.com/file/d/11t-f2_XDUBiM9v5FAYSXfmiUTiyjbuou/view?usp=sharing');

void _resume() {
  launchUrl(_url);
}

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.

  @override
  void initState() {
    LeetCodeService leetCodeService = LeetCodeService();
    summary = leetCodeService.getLeetCodeSummary();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Portfolio',
      home: Scaffold(
        appBar: MediaQuery.of(context).size.width >= 900
            ? null
            : AppBar(
                iconTheme: const IconThemeData(color: Colors.black),
                elevation: 0,
                backgroundColor: Colors.white,
                actions: const [
                  Padding(
                    padding: EdgeInsets.only(left: 16.0, right: 16.0),
                    child: NavbarLogo(),
                  )
                ],
              ),
        drawer:
            MediaQuery.of(context).size.width >= 900 ? null : const MyDrawer(),
        body: Column(
          children: [MyHeader(), MyHomePage()],
        ),
        floatingActionButton: const CreateFloatingButton(),
      ),
      theme: ThemeData(
        primaryIconTheme: const IconThemeData(
          color: Colors.black,
        ),
      ),
    );
  }
}

class CreateFloatingButton extends StatelessWidget {
  const CreateFloatingButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 150,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          gradient: LinearGradient(colors: [
            Colors.tealAccent.shade700,
            Colors.tealAccent,
            Colors.teal.shade50
          ]),
          boxShadow: const [BoxShadow(color: Colors.black26, blurRadius: 30)]),
      child: FloatingActionButton(
        backgroundColor: Colors.transparent,
        hoverColor: Colors.teal.shade600,
        tooltip: 'Get Resume',
        onPressed: _resume,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        elevation: 7.0,
        hoverElevation: 10.0,
        child: const Text(
          'Resume',
          style: TextStyle(fontSize: 17),
        ),
      ),
    );
  }
}
