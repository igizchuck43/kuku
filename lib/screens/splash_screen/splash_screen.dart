import 'package:Kuku/screens/sign_in/sign_in_screen.dart';
import 'package:flutter/material.dart';

import '../../constants.dart';
import '../../utils/screen_utils.dart';

class SplashScreen extends StatefulWidget {

  static const routeName = '/splash_screen';
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  int pageCount = 0;

  final PageController _controller = PageController();

  void setPageCount(int aPageCount) {
    setState(() {
      pageCount = aPageCount;
    });
  }
  @override
  Widget build(BuildContext context) {
    ScreenUtils().init(context);
    return  Scaffold(
      body: Container(
        child: Column(
          children: [
            IllustrationPageView(_controller, setPageCount),
            TextView(pageCount),
          ],
        ),
      ),
    );
  }
}

class TextView extends StatelessWidget {
  final int pageCount;

  const TextView(this.pageCount);
  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> data = [
      {
        'title': 'Stay Safe, Stay Connected',
        'desc':
        'Emphasizes the importance of safety and the app\'s role ''in keeping users connected to help when needed',
      },
      {
        'title': 'Your Safety is Our Priority',
        'desc':
        'The app\'s primary focus on ensuring user safety',
      },
      {
        'title': 'In an Emergency, Every Second Counts',
        'desc':
        'The urgency of emergencies and the app\'s quick response capabilities',
      },
    ];
    return Expanded(
      flex: 2,
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: getProportionateScreenWidth(20),
        ),
        child: Column(
          children: [
            Spacer(),
            Text(
              data[pageCount]['title']!,
              style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                color: kTextColor,
                fontWeight: FontWeight.w600,
              ),
            ),
            Spacer(),
            Text(
              data[pageCount]['desc']!,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: kTextColorAccent,
              ),
            ),
            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                PageIndicator(pageCount, 0),
                SizedBox(
                  width: getProportionateScreenWidth(8),
                ),
                PageIndicator(pageCount, 1),
                SizedBox(
                  width: getProportionateScreenWidth(8),
                ),
                PageIndicator(pageCount, 2),
              ],
            ),
            Spacer(),
            ElevatedButton(
              onPressed: () {

                Navigator.pushNamed(context, SignInScreen.routeName);
                // Navigator.of(context).pushNamed(LoginScreen.routeName);

              },
              child: Text(
                'Get Started',
              ),
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }
}

class PageIndicator extends StatelessWidget {
  const PageIndicator(this.pageCount, this.index);

  final int pageCount;
  final int index;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(
        milliseconds: 200,
      ),
      width: pageCount == index
          ? getProportionateScreenWidth(32)
          : getProportionateScreenWidth(8),
      height: getProportionateScreenWidth(8),
      decoration: BoxDecoration(
        color: pageCount == index ? kPrimaryGreen : kFillColorPrimary,
        borderRadius: BorderRadius.circular(
          getProportionateScreenWidth(4),
        ),
      ),
    );
  }
}

class IllustrationPageView extends StatelessWidget {
  final controller;
  final Function(int) callback;

  const IllustrationPageView(
      this.controller,
      this.callback,
      );

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 3,
      child: Container(
        width: double.infinity,
        color: kAccentGreen,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: getProportionateScreenHeight(50),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, SignInScreen.routeName);
                    // Navigator.of(context).pushNamed(LoginScreen.routeName);
                  },
                  child: Text(
                    'Skip',
                    style: Theme.of(context).textTheme.bodySmall?.copyWith(
                      color: kTextColor2,
                    ),
                  ),
                ),
                SizedBox(
                  width: getProportionateScreenWidth(20),
                )
              ],
            ),
            SizedBox(
              height: getProportionateScreenHeight(40),
            ),
            Expanded(
              child: PageView(
                controller: controller,
                onPageChanged: (pageNum) {
                  callback(pageNum);
                },
                children: [
                  Image.asset(
                    'assets/images/illu1.png',
                  ),
                  Image.asset(
                    'assets/images/illu2.png',
                  ),
                  Image.asset(
                    'assets/images/illu3.png',
                  )
                ],
              ),
            ),
            SizedBox(
              height: getProportionateScreenHeight(20),
            ),
          ],
        ),
      ),
    );

  }
}
