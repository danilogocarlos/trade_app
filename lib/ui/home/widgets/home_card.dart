import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:trading_app/shared/colors.dart';

class HomeCard extends StatefulWidget {
  @override
  _HomeCardState createState() => _HomeCardState();
}

class _HomeCardState extends State<HomeCard> {
  double pinkBallPositionY = -200;
  double pinkBallPositionX = -100;
  double greenBallPositionY = -200;
  double greenBallPositionX = 100;

  @override
  void initState() {
    runAnimation();

    super.initState();
  }

  runAnimation() async {
    await Future.delayed(Duration(microseconds: 100), () {
      setState(() {
        pinkBallPositionY = -150;
        pinkBallPositionX = -50;
        greenBallPositionY = -180;
        greenBallPositionX = 50;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: double.infinity,
      margin: EdgeInsets.symmetric(horizontal: 20),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Stack(
          children: [
            AnimatedPositioned(
              duration: Duration(seconds: 5),
              bottom: pinkBallPositionY,
              left: pinkBallPositionX,
              curve: Curves.easeInOut,
              child: Container(
                width: 250,
                height: 250,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: pink.withOpacity(.5),
                ),
              ),
            ),
            AnimatedPositioned(
              duration: Duration(seconds: 8),
              top: greenBallPositionY,
              left: greenBallPositionX,
              curve: Curves.easeInOut,
              child: Container(
                width: 300,
                height: 300,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: green.withOpacity(.5),
                ),
              ),
            ),
            Positioned(
              bottom: -100,
              right: -100,
              child: Container(
                width: 200,
                height: 200,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: darkBlue,
                ),
              ),
            ),
            BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 50.0, sigmaY: 50.0),
              child: Container(
                color: Colors.white.withOpacity(.008),
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(20, 20, 20, 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Portfolio Value",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(height: 15),
                  Text(
                    "\$503,535.23",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                      fontSize: 36,
                    ),
                  ),
                  SizedBox(height: 5),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Icon(
                                Feather.chevron_up,
                                color: green,
                                size: 14,
                              ),
                              SizedBox(width: 5),
                              Text(
                                "\$64,74 (3,79%)",
                                style: TextStyle(
                                  color: green,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 11,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 3),
                          Text(
                            "Today (Mar 10, 2021)",
                            style: TextStyle(
                              color: Colors.white54,
                              fontSize: 10,
                            ),
                          ),
                        ],
                      ),
                      SvgPicture.asset(
                        'lib/assets/images/chart.svg',
                        color: green,
                      ),
                    ],
                  ),
                  Divider(
                    color: Colors.white,
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                            padding: EdgeInsets.all(4),
                            decoration: BoxDecoration(
                              color: Colors.black.withOpacity(.1),
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: Icon(
                              Feather.dollar_sign,
                              color: Colors.white70,
                              size: 16,
                            ),
                          ),
                          SizedBox(width: 5),
                          Text(
                            "\$458,87",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 11,
                            ),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            'App balance',
                            style: TextStyle(
                              color: Colors.white54,
                              fontSize: 11,
                            ),
                          ),
                          SizedBox(width: 5),
                          Icon(
                            Feather.chevron_right,
                            color: Colors.white38,
                            size: 14,
                          )
                        ],
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
