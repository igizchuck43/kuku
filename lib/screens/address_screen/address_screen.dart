import 'package:flutter/material.dart';

import '../../constants.dart';
import '../../utils/screen_utils.dart';
import '../../widgets/back_button_ls.dart';
import '../map_screen/map_screen.dart';

class AddressScreen extends StatelessWidget {
  static const routeName = '/address_screen';

  const AddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    ScreenUtils().init(context);
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            BackButtonLS(),
            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: getProportionateScreenWidth(16),
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          'Add Current Location',
                          style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Spacer(),
                        GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, MapScreen.routeName);
                            // Navigator.of(context).pushNamed(MapScreen.routeName);
                          },
                          child: Image.asset('assets/imgs/map.png'),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: getProportionateScreenHeight(10),
                    ),
                    Row(
                      children: [
                        FittedBox(
                          child: Text(
                            'Enter your current location and address',
                            style: TextStyle(
                              color: kTextColorAccent,
                              fontSize: getProportionateScreenWidth(16),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: getProportionateScreenHeight(10),
                    ),

                    // SearchBar(),

                    SizedBox(
                      height: getProportionateScreenHeight(10),
                    ),
                    Divider(),
                    SizedBox(
                      height: getProportionateScreenHeight(10),
                    ),
                    Expanded(
                      child: ListTile(
                        leading: Container(
                          decoration: ShapeDecoration(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(
                                getProportionateScreenWidth(8),
                              ),
                            ),
                            color: kPrimaryGreen,
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(
                              getProportionateScreenWidth(8),
                            ),
                            child: Icon(
                              Icons.location_on_outlined,
                              size: getProportionateScreenWidth(28),
                              color: Colors.white,
                            ),
                          ),
                        ),
                        title: Text(
                          'Current Location',
                          style: TextStyle(
                            fontSize: getProportionateScreenWidth(20),
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        subtitle: Text(
                          'Queen Elizabeth 89\'8',
                        ),
                      ),
                    ),
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
