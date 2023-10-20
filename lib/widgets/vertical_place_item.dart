import 'package:flutter/material.dart';
import 'package:flutter_travel/pages/detail_page.dart';

class VerticalPlaceItem extends StatelessWidget {
  final Map<String, String> place;

  VerticalPlaceItem({required this.place});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (BuildContext context) {
              return DetailPage(place: place);
            },
          ),
        );
      },
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(5),
            child: Image.asset(
              place['img']!,
              height: 70.0,
              width: 70.0,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(width: 15),

          // 右侧介绍
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "${place["name"]}",
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 14.0,
                ),
                maxLines: 2,
                textAlign: TextAlign.left,
              ),
              SizedBox(height: 3.0),
              Row(
                children: [
                  Icon(
                    Icons.location_on,
                    size: 13.0,
                    color: Colors.blueGrey[300],
                  ),
                  SizedBox(width: 3.0),
                  Text(
                    "${place["location"]}",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 13.0,
                      color: Colors.blueGrey[300],
                    ),
                    maxLines: 1,
                    textAlign: TextAlign.left,
                  ),
                ],
              ),
              SizedBox(height: 10.0),
              Text(
                "${place["price"]}",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0,
                ),
                maxLines: 1,
                textAlign: TextAlign.left,
              ),
            ],
          )
        ],
      ),
    );
  }
}
