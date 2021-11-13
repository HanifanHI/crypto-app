import 'package:crypto_app/shared/theme.dart';
import 'package:flutter/material.dart';

class PriceAlertWidget extends StatelessWidget {
  final String time;
  final bool isAbove;
  final bool isUp;
  final String price;

  PriceAlertWidget({
    required this.time,
    required this.price,
    this.isAbove = false,
    this.isUp = false,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                time,
                style: greyTextStyle.copyWith(
                  fontSize: 12,
                ),
              ),
              Text(
                isAbove ? 'Above \$$price' : 'Below \$$price',
                style: darkPurpleTextStyle.copyWith(
                  fontSize: 18,
                  fontWeight: medium,
                ),
              ),
            ],
          ),
          isUp
              ? Image.asset(
                  'assets/icon-up.png',
                  width: 24,
                  height: 24,
                )
              : Image.asset(
                  'assets/icon-down.png',
                  width: 24,
                  height: 24,
                ),
        ],
      ),
    );
  }
}
