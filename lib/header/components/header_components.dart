import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_new/header/components/navbar_logo.dart';
import 'package:portfolio_new/homepage.dart';

void scroll({int? index, bool? fromSide, BuildContext? context}) {
  if (fromSide!) Navigator.pop(context!);
  itemScrollController.scrollTo(
      index: index!, duration: const Duration(seconds: 1));
}

class HeaderComponents extends StatelessWidget {
  const HeaderComponents({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    if (size.width >= 900) {
      return Row(children: [
        CreateButton(
          text: 'Home',
          onPress: () => scroll(index: 0, fromSide: false, context: context),
        ),
        CreateButton(
          text: 'About',
          onPress: () => scroll(index: 1, fromSide: false, context: context),
        ),
        CreateButton(
          text: 'LeetCode',
          onPress: () => scroll(index: 2, fromSide: false, context: context),
        ),
        CreateButton(
          text: 'Projects',
          onPress: () => scroll(index: 3, fromSide: false, context: context),
        ),
        CreateButton(
          text: 'Connect',
          onPress: () => scroll(index: 4, fromSide: false, context: context),
        ),
      ]);
    } else {
      return Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView(children: [
          const Padding(
            padding: EdgeInsets.only(bottom: 10.0),
            child: NavbarLogo(),
          ),
          const Divider(),
          Tiles(
            text: "Home",
            icon: Icons.home,
            onPress: () => scroll(index: 0, fromSide: true, context: context),
          ),
          Tiles(
            text: "About",
            icon: Icons.person,
            onPress: () => scroll(index: 1, fromSide: true, context: context),
          ),
          Tiles(
            text: "LeetCode",
            icon: Icons.code,
            onPress: () => scroll(index: 2, fromSide: true, context: context),
          ),
          Tiles(
            text: "Projects",
            icon: Icons.inventory,
            onPress: () => scroll(index: 3, fromSide: true, context: context),
          ),
          Tiles(
            text: "Connect",
            icon: Icons.contacts,
            onPress: () => scroll(index: 4, fromSide: true, context: context),
          ),
        ]),
      );
    }
  }
}

class Tiles extends StatelessWidget {
  const Tiles({Key? key, this.icon, this.text, this.onPress}) : super(key: key);
  final IconData? icon;
  final String? text;
  final Function()? onPress;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 18.0),
          child: Icon(icon!, color: Colors.redAccent),
        ),
        CreateButton(text: text!, onPress: onPress!),
      ],
    );
  }
}

class CreateButton extends StatelessWidget {
  const CreateButton({Key? key, this.text, this.onPress}) : super(key: key);
  final String? text;
  final Function()? onPress;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20),
      child: MaterialButton(
        onPressed: onPress,
        hoverColor: Colors.teal,
        hoverElevation: 8.0,
        highlightColor: Colors.redAccent.shade700,
        highlightElevation: 8.0,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(28.0)),
        height: 60,
        minWidth: 120,
        child: Text(
          text!,
          style: GoogleFonts.aBeeZee(fontSize: 18, fontWeight: FontWeight.w400),
        ),
      ),
    );
  }
}
