import 'package:crypto_app/shared/theme.dart';
import 'package:crypto_app/widgets/assets_widget.dart';
import 'package:crypto_app/widgets/menu_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // * PROFILE
    Widget profile() {
      return Padding(
        padding: EdgeInsets.only(right: 24),
        child: Column(
          children: [
            Container(
              width: 80,
              height: 80,
              margin: EdgeInsets.only(
                top: 50,
                bottom: 14,
              ),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage('assets/user.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Text(
              'Willa Madelaine',
              style: darkPurpleTextStyle.copyWith(
                fontSize: 18,
                fontWeight: medium,
              ),
            ),
            SizedBox(
              height: 2,
            ),
            Text(
              '@willamaddy',
              style: greyTextStyle,
            ),
          ],
        ),
      );
    }

    // * BALANCE
    Widget balance() {
      return Container(
        width: 327,
        height: 210,
        margin: EdgeInsets.only(
          top: 30,
          bottom: 30,
          right: 24,
        ),
        decoration: BoxDecoration(
          color: kPrimaryColor,
          borderRadius: BorderRadius.circular(35),
          boxShadow: [
            BoxShadow(
              offset: Offset(0, 20),
              color: kPrimaryColor.withOpacity(0.3),
              blurRadius: 30,
            ),
          ],
        ),
        child: Padding(
          padding: EdgeInsets.only(
            top: 30,
            left: 30,
            bottom: 30,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Total Balance',
                style: lightPurpleTextStyle,
              ),
              Text(
                '\$ 80,450,000',
                style: whiteTextStyle.copyWith(
                  fontSize: 24,
                  fontWeight: medium,
                ),
              ),
              SizedBox(
                height: 18,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'This Month Profit',
                        style: lightPurpleTextStyle,
                      ),
                      Row(
                        children: [
                          Text(
                            '\$ 41,000',
                            style: whiteTextStyle.copyWith(
                              fontSize: 16,
                            ),
                          ),
                          SizedBox(
                            width: 4,
                          ),
                          Container(
                            width: 20,
                            height: 20,
                            decoration: BoxDecoration(
                              color: kGreenColor,
                              shape: BoxShape.circle,
                            ),
                            child: Center(
                              child: Text(
                                '+8%',
                                style: whiteTextStyle.copyWith(
                                  fontSize: 8,
                                  fontWeight: medium,
                                ),
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                  Image.asset(
                    'assets/image-analystics1.png',
                    width: 146.5,
                    height: 74.5,
                  )
                ],
              )
            ],
          ),
        ),
      );
    }

    // * ASSETS
    Widget myAssets() {
      return Container(
        width: double.infinity,
        height: 170,
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AssetsWidget(
                image: 'assets/image-1.png',
                title: 'BTC',
                price: '90,500',
              ),
              AssetsWidget(
                image: 'assets/image-2.png',
                title: 'ETH',
                price: '12,100',
              ),
              AssetsWidget(
                image: 'assets/image-3.png',
                title: 'DOG',
                price: '10,500',
              ),
            ],
          ),
        ),
      );
    }

    // * MENU 1
    Widget menu1() {
      return Container(
        height: 160,
        margin: EdgeInsets.only(right: 24),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            MenuWidget(
              imageUrl: 'assets/image-analystics2.png',
              title: 'Analytics',
            ),
            MenuWidget(
              imageUrl: 'assets/image-withdraw.png',
              title: 'Withdraw',
            ),
            MenuWidget(
              imageUrl: 'assets/image-deposit.png',
              title: 'Transfer',
            ),
          ],
        ),
      );
    }

    // * MENU 2
    Widget menu2() {
      return Container(
        height: 134,
        margin: EdgeInsets.only(
          right: 24,
          bottom: 57,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            MenuWidget(
              imageUrl: 'assets/image-wallet.png',
              title: 'Wallet',
            ),
            MenuWidget(
              imageUrl: 'assets/image-message.png',
              title: 'Message',
            ),
            MenuWidget(
              imageUrl: 'assets/image-verify.png',
              title: 'Verify',
            ),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Padding(
        padding: EdgeInsets.only(
          left: 24,
        ),
        child: ListView(
          children: [
            profile(),
            balance(),
            Text(
              'My Assets',
              style: darkPurpleTextStyle.copyWith(
                fontSize: 16,
                fontWeight: medium,
              ),
            ),
            SizedBox(
              height: 12,
            ),
            myAssets(),
            Text(
              'Main Menu',
              style: darkPurpleTextStyle.copyWith(
                fontSize: 16,
                fontWeight: medium,
              ),
            ),
            SizedBox(
              height: 12,
            ),
            menu1(),
            menu2(),
          ],
        ),
      ),
    );
  }
}
