import 'package:flutter/material.dart';
import 'package:trading_app/shared/colors.dart';
import 'package:trading_app/ui/home/widgets/card_value.dart';
import 'package:trading_app/ui/home/widgets/home_card.dart';
import 'package:trading_app/ui/home/widgets/my_app_bar.dart';
import 'package:trading_app/ui/home/widgets/my_bottom_bar.dart';
import 'package:trading_app/ui/home/widgets/news_card.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: darkBlue,
      body: SafeArea(
        child: Stack(
          children: [
            SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 70),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: Text(
                      'Your portfolio looks great today',
                      style: TextStyle(
                        color: Colors.white38,
                        fontSize: 14,
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  HomeCard(),
                  SizedBox(height: 40),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: Text(
                      'Your Crypto',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  CardValue(
                    title: "Bitcoin",
                    abbr: "BTC",
                    value: "\$51,350.03",
                    percent: "6,08",
                    upping: true,
                    color1: orange,
                    color2: orangeLight,
                    image: 'bitcoin.svg',
                  ),
                  SizedBox(height: 20),
                  CardValue(
                    title: "Ethereum",
                    abbr: "ETH",
                    value: "\$51,350.03",
                    percent: "6,08",
                    upping: false,
                    color1: purple,
                    color2: purpleLight,
                    image: 'ethereum.svg',
                  ),
                  SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: Text(
                      'Last news',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  NewsCard(
                    title: "BTC World",
                    author: "Raul Correia",
                  ),
                  SizedBox(height: 60),
                ],
              ),
            ),
            Align(
              alignment: Alignment.topCenter,
              child: MyAppBar(),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: MyBottomBar(),
            ),
          ],
        ),
      ),
    );
  }
}
