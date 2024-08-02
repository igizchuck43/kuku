import 'package:Kuku/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';

import '../../constants.dart';
import '../../utils/screen_utils.dart';
import '../../widgets/back_button_ls.dart';

class MapScreen extends StatelessWidget {
  static const routeName = '/map_screen';
  const MapScreen({super.key});

  @override
  Widget build(BuildContext context) {
    ScreenUtils().init(context);
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                BackButtonLS(),
                Text(
                  'Choose Your Current Address',
                  style: TextStyle(
                    fontSize: getProportionateScreenWidth(17),
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(
                  width: getProportionateScreenWidth(32),
                )
              ],
            ),
            Expanded(
              child: Stack(
                children: [
                  SizedBox(
                    width: double.infinity,
                    child: Image.asset(
                      'assets/images/map_pattern.png',
                      fit: BoxFit.fill,
                    ),
                  ),
                  Positioned(
                    left: 0,
                    right: 0,
                    child: Image.asset(
                      'assets/images/curLoc.png',
                    ),
                  ),
                  BottomCard(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class BottomCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: SizedBox(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: getProportionateScreenWidth(20),
              ),
              child: SizedBox(
                width: getProportionateScreenWidth(56),
                height: getProportionateScreenWidth(56),
                child: FloatingActionButton(
                  onPressed: () {},
                  child: Icon(
                    Icons.gps_fixed,
                    size: getProportionateScreenWidth(32),
                  ),
                  backgroundColor: kPrimaryGreen,
                ),
              ),
            ),
            SizedBox(
              height: getProportionateScreenHeight(10),
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(
                    getProportionateScreenWidth(
                      8,
                    ),
                  ),
                  topRight: Radius.circular(
                    getProportionateScreenWidth(
                      8,
                    ),
                  ),
                ),
              ),
              child: Padding(
                padding: EdgeInsets.all(
                  getProportionateScreenWidth(20),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Row(
                      children: [
                        Text(
                          'Nakawa Division 256',
                          style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        Spacer(),
                        Icon(
                          Icons.search,
                          size: getProportionateScreenWidth(32),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: getProportionateScreenHeight(10),
                    ),
                    Text(
                      'Ntinda, Capital Shoppers, 19403',
                      style: Theme.of(context).textTheme.bodySmall?.copyWith(
                        color: kTextColorAccent,
                      ),
                    ),
                    SizedBox(
                      height: getProportionateScreenHeight(10),
                    ),
                    Text(
                      'Detail Address',
                      style: Theme.of(context).textTheme.bodySmall?.copyWith(
                        color: kTextColorAccent,
                      ),
                    ),
                    SizedBox(
                      height: getProportionateScreenHeight(5),
                    ),
                    CustomTextField(
                      hint: 'Enter your current location details....',
                      icon: Icon(Icons.house, size: 24,),
                    ),
                    SizedBox(
                      height: getProportionateScreenHeight(10),
                    ),
                    ElevatedButton(onPressed: () {
                      // Navigator.pushNamed(context, HomeScreen.routeName);
                    }, child: Text('Add Address'))
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}