import 'package:flutter/material.dart';

import 'components/header_components.dart';
import 'components/navbar_logo.dart';

class MyHeader extends StatelessWidget {
  const MyHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return size.width >= 900
        ? Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [NavbarLogo(), HeaderComponents()],
            ),
          )
        : Container();
  }
}
