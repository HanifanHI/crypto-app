import 'package:crypto_app/pages/exchange_page.dart';
import 'package:crypto_app/shared/theme.dart';
import 'package:flutter/material.dart';

class AssetsWidget extends StatelessWidget {
  final String image;
  final String title;
  final String price;

  AssetsWidget({
    required this.image,
    required this.title,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return ExChangewidget();
            },
          ),
        );
      },
      child: Container(
        width: 140,
        height: 133,
        margin: EdgeInsets.only(right: 16),
        padding: EdgeInsets.all(14),
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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 40,
              height: 40,
              margin: EdgeInsets.only(bottom: 20),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(image),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Text(
              title,
              style: greyTextStyle.copyWith(
                fontSize: 12,
              ),
            ),
            Text(
              '\$$price',
              style: darkPurpleTextStyle.copyWith(
                fontSize: 18,
                fontWeight: medium,
              ),
            )
          ],
        ),
      ),
    );
  }
}
