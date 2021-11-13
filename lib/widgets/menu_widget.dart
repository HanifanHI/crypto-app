import 'package:crypto_app/shared/theme.dart';
import 'package:flutter/material.dart';

class MenuWidget extends StatelessWidget {
  final String imageUrl;
  final String title;

  MenuWidget({
    required this.imageUrl,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 94,
      height: 110,
      decoration: BoxDecoration(
        color: kWhiteColor,
        borderRadius: BorderRadius.circular(25),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 20),
            color: kGreyColor.withOpacity(0.2),
            blurRadius: 10,
          )
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            imageUrl,
            width: 46,
            height: 46,
          ),
          SizedBox(
            height: 11,
          ),
          Text(
            title,
            style: darkPurpleTextStyle.copyWith(
              fontSize: 12,
              fontWeight: medium,
            ),
          )
        ],
      ),
    );
  }
}
