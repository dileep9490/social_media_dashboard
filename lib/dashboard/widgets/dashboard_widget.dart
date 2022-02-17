import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../const.dart';

class Dashboard_Widget extends StatelessWidget {
  Dashboard_Widget(
      {Key? key,
      required this.theme,
      required this.iconPath,
      required this.followersCount,
      required this.todayCount,
      required this.upordown,
      this.colorBar,
      this.gradient,
      required this.userName,
      required this.upordownColor,
      this.typeoffollowerCount = 'FOLLOWERS'})
      : super(key: key);

  final ThemeData theme;
  final String iconPath;
  final String followersCount;
  final String todayCount;
  final String upordown;
  Color? colorBar;
  Gradient? gradient;
  String userName;
  final String typeoffollowerCount;
  final Color upordownColor;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
          color: theme.cardColor,
          borderRadius: const BorderRadius.all(Radius.circular(5))),
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 4,
              decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(5),
                      topRight: Radius.circular(5)),
                  color: colorBar,
                  gradient: gradient),
              width: double.infinity,
            ),
            const SizedBox(
              height: 24,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(iconPath),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  userName,
                  style: theme.textTheme.bodyText2!
                      .copyWith(color: lightText1, fontSize: 16),
                )
              ],
            ),
            const SizedBox(
              height: 18,
            ),
            Text(
              followersCount,
              style: theme.textTheme.bodyText2!.copyWith(fontSize: 50),
            ),
            Text(
              typeoffollowerCount,
              textWidthBasis: TextWidthBasis.parent,
              style: theme.textTheme.bodyText1!
                  .copyWith(color: lightText1, fontSize: 14, letterSpacing: 4),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(upordown),
                const SizedBox(
                  width: 6,
                ),
                Text(
                  '$todayCount Today',
                  style:
                      theme.textTheme.bodyText2!.copyWith(color: upordownColor),
                ),
              ],
            ),
            const SizedBox(
              height: 16,
            )
          ]),
    );
  }
}
