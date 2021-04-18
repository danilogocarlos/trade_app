import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:trading_app/shared/colors.dart';

class NewsCard extends StatelessWidget {
  final String title;
  final String author;

  const NewsCard({Key key, this.title, this.author}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20),
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: darkBlueLight,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
          ),
          SizedBox(width: 30),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Text(
                      title,
                      style: TextStyle(color: Colors.white, fontSize: 14),
                    ),
                    SizedBox(height: 10),
                    Text(
                      author,
                      style: TextStyle(color: lightBlue, fontSize: 12),
                    )
                  ],
                ),
                Icon(
                  Feather.bookmark,
                  size: 20,
                  color: Colors.white38,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
