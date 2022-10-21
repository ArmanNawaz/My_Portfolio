import 'package:flutter/material.dart';

import 'header_components.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: 8.0,
      // width: max(250, MediaQuery.of(context).size.width / 3),
      child: HeaderComponents(),
    );
  }
}
