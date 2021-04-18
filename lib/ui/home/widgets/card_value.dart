import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:trading_app/shared/colors.dart';

class CardValue extends StatelessWidget {
  final String title;
  final String value;
  final String abbr;
  final String percent;
  final bool upping;
  final Color color1;
  final Color color2;
  final String image;

  const CardValue({
    Key key,
    this.title,
    this.value,
    this.abbr,
    this.percent,
    this.upping,
    this.color1,
    this.color2,
    this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        height: 100,
        width: double.infinity,
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          gradient: LinearGradient(
            colors: [
              darkBlueLight,
              darkBlue,
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            stops: [0.0, .3],
            tileMode: TileMode.clamp,
          ),
        ),
        child: Row(
          children: [
            Container(
              width: 60,
              height: 60,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                gradient: LinearGradient(
                  colors: [
                    color1,
                    color2,
                  ],
                  begin: Alignment.bottomLeft,
                  end: Alignment.topRight,
                  stops: [0.0, .5],
                ),
                boxShadow: [
                  BoxShadow(
                    color: color1.withAlpha(60),
                    blurRadius: 12.0,
                    spreadRadius: 3.0,
                    offset: Offset(
                      0.0,
                      0.0,
                    ),
                  ),
                ],
              ),
              child: Center(
                child: SvgPicture.asset(
                  'lib/assets/images/$image',
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(width: 30),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        title,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      ),
                      Text(
                        value,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        abbr,
                        style: TextStyle(
                          color: Colors.white38,
                          fontSize: 12,
                        ),
                      ),
                      Row(
                        children: [
                          Icon(
                            upping ? Feather.chevron_up : Feather.chevron_down,
                            size: 11,
                            color: upping ? green : pink,
                          ),
                          Text(
                            percent,
                            style: TextStyle(
                              color: upping ? green : pink,
                              fontSize: 11,
                            ),
                          ),
                        ],
                      ),
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