import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:social_media_dashboard/const.dart';
import 'package:social_media_dashboard/dashboard/widgets/dashboard_widget.dart';

import '../widgets/overview_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: _HomePageView(),
      ),
    );
  }
}

class _HomePageView extends StatelessWidget {
  const _HomePageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.only(top: 26, left: 18, right: 18),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Social Media DashBoard',
              style: theme.textTheme.bodyText2!.copyWith(fontSize: 26),
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              'Total Followers:23,004',
              style: theme.textTheme.bodyText2!
                  .copyWith(color: lightText1, fontSize: 14),
            ),
            const SizedBox(
              height: 18,
            ),
            const Divider(
              thickness: 2,
            ),
            const SizedBox(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Dark Mode",
                  style: theme.textTheme.bodyText2!.copyWith(color: lightText1),
                ),
                Switch(
                    value: false,
                    onChanged: (value) {
                      //TODO: make it gradient when true
                    }),
              ],
            ),
            Dashboard_Widget(
              theme: theme,
              iconPath: 'assets/images/icon-facebook.svg',
              followersCount: ' 1987',
              todayCount: '12',
              upordown: 'assets/images/icon-up.svg',
              upordownColor: limeGreen,
              userName: '@dileepK',
              colorBar: facebook,
            ),
            const SizedBox(
              height: 10,
            ),
            Dashboard_Widget(
                theme: theme,
                iconPath: 'assets/images/icon-twitter.svg',
                followersCount: ' 1044',
                todayCount: '99',
                upordown: 'assets/images/icon-up.svg',
                userName: '@dileepk',
                colorBar: twitter,
                upordownColor: limegreen),
            const SizedBox(
              height: 10,
            ),
            Dashboard_Widget(
                theme: theme,
                iconPath: 'assets/images/icon-instagram.svg',
                followersCount: '11k',
                todayCount: '1099',
                upordown: 'assets/images/icon-up.svg',
                userName: '@dileepk',
                gradient:
                    const LinearGradient(colors: [instagram1, instagram2]),
                upordownColor: limegreen),
            Dashboard_Widget(
              theme: theme,
              iconPath: 'assets/images/icon-youtube.svg',
              followersCount: '8239',
              todayCount: '144',
              upordown: 'assets/images/icon-down.svg',
              userName: 'dktv',
              upordownColor: brightRed,
              colorBar: youtube,
              typeoffollowerCount: 'SUBSCRIBERES',
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              'Overview Today',
              style: theme.textTheme.bodyText2!
                  .copyWith(color: lightText1, fontSize: 26),
            ),
            OverView_widget(
              theme: theme,
              title: 'Page Views',
              iconPath: 'assets/images/icon-facebook.svg',
              count: '87',
              upordown: 'assets/images/icon-up.svg',
              percentage: '3',
            ),
            OverView_widget(
              theme: theme,
              title: 'Likes',
              iconPath: 'assets/images/icon-facebook.svg',
              count: '52',
              upordown: 'assets/images/icon-down.svg',
              percentage: '2',
            ),
            OverView_widget(
              theme: theme,
              title: 'Likes',
              iconPath: 'assets/images/icon-instagram.svg',
              count: '5462',
              upordown: 'assets/images/icon-up.svg',
              percentage: '2257',
            ),
            OverView_widget(
              theme: theme,
              title: 'Profile Views',
              iconPath: 'assets/images/icon-instagram.svg',
              count: '52k',
              upordown: 'assets/images/icon-up.svg',
              percentage: '1375',
            ),
            OverView_widget(
              theme: theme,
              title: 'Retweets',
              iconPath: 'assets/images/icon-twitter.svg',
              count: '117',
              upordown: 'assets/images/icon-up.svg',
              percentage: '303',
            ),
            OverView_widget(
              theme: theme,
              title: 'Likes',
              iconPath: 'assets/images/icon-twitter.svg',
              count: '507',
              upordown: 'assets/images/icon-up.svg',
              percentage: '553',
            ),
            OverView_widget(
              theme: theme,
              title: 'Likes',
              iconPath: 'assets/images/icon-youtube.svg',
              count: '107',
              upordown: 'assets/images/icon-down.svg',
              percentage: '19',
            ),
            OverView_widget(
              theme: theme,
              title: 'Total Views',
              iconPath: 'assets/images/icon-youtube.svg',
              count: '1407',
              upordown: 'assets/images/icon-up.svg',
              percentage: '12',
            ),
            const SizedBox(
              height: 20,
            )
          ],
        ),
      ),
    );
  }
}
