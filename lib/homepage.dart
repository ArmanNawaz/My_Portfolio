import 'package:flutter/material.dart';
import 'package:portfolio_new/cards/about.dart';
import 'package:portfolio_new/cards/connect.dart';
import 'package:portfolio_new/cards/intro.dart';
import 'package:portfolio_new/cards/leetcode.dart';
import 'package:portfolio_new/cards/projects.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

final List<Widget> items = [
  const MyIntro(),
  const About(),
  const LeetCode(),
  Projects(),
  Connect(),
];

final ItemScrollController itemScrollController = ItemScrollController();
final ItemPositionsListener itemPositionsListener =
    ItemPositionsListener.create();

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ScrollablePositionedList.builder(
          scrollDirection: Axis.vertical,
          itemScrollController: itemScrollController,
          itemPositionsListener: itemPositionsListener,
          itemCount: items.length,
          itemBuilder: (BuildContext context, int index) {
            return items[index];
          }),
    );
  }
}
