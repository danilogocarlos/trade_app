import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:trading_app/shared/colors.dart';

class MyAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: darkBlue,
          padding: const EdgeInsets.fromLTRB(30, 22, 30, 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Text(
                  'Hi, Big Paul',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              Row(
                children: [
                  Badge(
                    position: BadgePosition.topStart(),
                    badgeColor: pink,
                    badgeContent: Text(
                      '2',
                      style: TextStyle(color: Colors.white),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Icon(
                        Feather.message_square,
                        color: Colors.white,
                        size: 24,
                      ),
                    ),
                  ),
                  SizedBox(width: 30),
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Icon(
                      Feather.bell,
                      color: Colors.white38,
                      size: 24,
                    ),
                  )
                ],
              )
            ],
          ),
        ),
        Container(
          height: 20,
          width: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment(0.0, 0.2),
              end: Alignment(0.0, -1.0),
              colors: [
                darkBlue.withOpacity(.0),
                darkBlue.withOpacity(.5),
                darkBlue
              ],
              tileMode: TileMode.clamp,
            ),
          ),
        ),
      ],
    );
  }
}
