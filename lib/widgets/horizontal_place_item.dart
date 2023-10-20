import 'package:flutter/material.dart';
import 'package:flutter_travel/pages/detail_page.dart';

class HorizontalPlaceItem extends StatelessWidget {
  final Map<String, String> place;

  HorizontalPlaceItem({required this.place});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: SizedBox(
        height: 250.0,
        width: 140.0,
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                "${place['img']}",
                height: 178.0,
                width: 140.0,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 7.0),
            Container(
              alignment: Alignment.centerLeft,
              child: Text(
                "${place["name"]}",
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15.0,
                ),
                maxLines: 2,
                textAlign: TextAlign.left,
              ),
            ),
            SizedBox(height: 3.0),
            Container(
              alignment: Alignment.centerLeft,
              child: Text(
                "${place["location"]}",
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 13.0,
                  color: Colors.blueGrey[300],
                ),
                maxLines: 1,
              ),
            ),
          ],
        ),
      ),
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (BuildContext context) {
              return DetailPage(place: place);
            },
          ),
        );
      },
    );
  }
}
