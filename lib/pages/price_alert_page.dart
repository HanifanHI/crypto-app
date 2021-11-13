import 'package:crypto_app/shared/theme.dart';
import 'package:crypto_app/widgets/price_alert_widget.dart';
import 'package:flutter/material.dart';

class PriceAlertPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 24,
          vertical: 70,
        ),
        child: ListView(
          children: [
            // * TITLE
            Center(
              child: Text(
                'Price Alert',
                style: darkPurpleTextStyle.copyWith(
                  fontSize: 20,
                  fontWeight: medium,
                ),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/image-3.png'),
                    ),
                  ),
                ),
                SizedBox(
                  width: 14,
                ),
                Text(
                  'DOGE',
                  style: blueTextStyle.copyWith(
                    fontSize: 18,
                    fontWeight: bold,
                  ),
                )
              ],
            ),
            SizedBox(
              height: 24,
            ),
            Column(
              children: [
                PriceAlertWidget(
                  price: '90,500',
                  time: '12 mins ago',
                  isAbove: true,
                  isUp: true,
                ),
                PriceAlertWidget(
                  price: '80,409',
                  time: '3 days ago',
                  isAbove: true,
                  isUp: true,
                ),
                PriceAlertWidget(
                  price: '65,000',
                  time: '1 week ago',
                  isAbove: false,
                  isUp: false,
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/image-1.png'),
                    ),
                  ),
                ),
                SizedBox(
                  width: 14,
                ),
                Text(
                  'BITCOIN',
                  style: orangeTextStyle.copyWith(
                    fontSize: 18,
                    fontWeight: bold,
                  ),
                )
              ],
            ),
            SizedBox(
              height: 24,
            ),
            Column(
              children: [
                PriceAlertWidget(
                  price: '80,409',
                  time: '3 days ago',
                  isAbove: true,
                  isUp: true,
                ),
                PriceAlertWidget(
                  price: '22,000',
                  time: '1 week ago',
                  isAbove: false,
                  isUp: false,
                ),
                PriceAlertWidget(
                  price: '360',
                  time: '1 month ago',
                  isAbove: false,
                  isUp: false,
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
