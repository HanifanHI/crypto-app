import 'package:crypto_app/pages/price_alert_page.dart';
import 'package:crypto_app/shared/theme.dart';
import 'package:flutter/material.dart';

class ExChangewidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          // * TITLE
          Padding(
            padding: EdgeInsets.only(top: 70),
            child: Center(
              child: Text(
                'Exchange Coin',
                style: darkPurpleTextStyle.copyWith(
                  fontSize: 20,
                  fontWeight: medium,
                ),
              ),
            ),
          ),

          // * ARROW
          Container(
            width: 230,
            height: 66.33,
            margin: EdgeInsets.only(
              top: 113,
              bottom: 10.5,
            ),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/image-arrow.png'),
              ),
            ),
          ),

          // * CHANGE COIN
          Container(
            width: 318.74,
            height: 173,
            margin: EdgeInsets.symmetric(horizontal: 28),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: 94.37,
                      height: 94.37,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/image-1.png'),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 18.5,
                    ),
                    Text(
                      'BTC',
                      style: greyTextStyle.copyWith(
                        fontSize: 16,
                      ),
                    ),
                    SizedBox(
                      height: 2,
                    ),
                    Text(
                      '1.390',
                      style: darkPurpleTextStyle.copyWith(
                        fontSize: 22,
                        fontWeight: medium,
                      ),
                    )
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: 94.37,
                      height: 94.37,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/image-2.png'),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 18.5,
                    ),
                    Text(
                      'ETH',
                      style: greyTextStyle.copyWith(
                        fontSize: 16,
                      ),
                    ),
                    SizedBox(
                      height: 2,
                    ),
                    Text(
                      '22.890',
                      style: darkPurpleTextStyle.copyWith(
                        fontSize: 22,
                        fontWeight: medium,
                      ),
                    )
                  ],
                )
              ],
            ),
          ),

          // * BUTTON
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return PriceAlertPage();
                  },
                ),
              );
            },
            child: Container(
              height: 45,
              margin: EdgeInsets.only(
                left: 65,
                right: 65,
                top: 160,
                bottom: 30,
              ),
              decoration: BoxDecoration(
                color: kPrimaryColor,
                borderRadius: BorderRadius.circular(25),
              ),
              child: Center(
                child: Text(
                  'Procced Now',
                  style: whiteTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: medium,
                  ),
                ),
              ),
            ),
          ),

          // * TERM
          Center(
            child: Text(
              'Terms & Conditions',
              style: greyTextStyle.copyWith(
                fontSize: 16,
                decoration: TextDecoration.underline,
              ),
            ),
          ),
          SizedBox(
            height: 90,
          ),
        ],
      ),
    );
  }
}
