import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../const.dart';

class OverView_widget extends StatelessWidget {
  const OverView_widget({
    Key? key,
    required this.theme,
    required this.title,
    required this.iconPath,
    required this.count,
    required this.upordown,
    required this.percentage,
  }) : super(key: key);

  final ThemeData theme;
  final String title;
  final String iconPath;
  final String count;
  final String upordown;
  final String percentage;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: topLightBG,
      ),
      margin: const EdgeInsets.only(top: 22),
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: theme.textTheme.bodyText2!
                    .copyWith(fontSize: 20, color: lightText1),
              ),
              SvgPicture.asset(
                iconPath,
                height: 30,
                width: 30,
              )
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                count,
                style: theme.textTheme.bodyText2!.copyWith(fontSize: 28),
              ),
              Row(
                children: [
                  SvgPicture.asset(upordown),
                  Text(
                    "$percentage%",
                    style:
                        theme.textTheme.bodyText2!.copyWith(color: limegreen),
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
