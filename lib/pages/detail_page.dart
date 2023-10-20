import 'package:flutter/material.dart';
import 'package:flutter_travel/util/places.dart';
import 'package:flutter_travel/widgets/icon_badge.dart';

class DetailPage extends StatelessWidget {
  final Map<String, String> place;

  const DetailPage({super.key, required this.place});

  Widget buildSlider() {
    return SizedBox(
      height: 250.0,
      child: ListView.separated(
        separatorBuilder: (BuildContext context, int index) {
          return SizedBox(width: 15);
        },
        scrollDirection: Axis.horizontal,
        primary: false,
        itemCount: places.length,
        itemBuilder: (BuildContext context, int index) {
          Map place = places[index];

          return ClipRRect(
            borderRadius: BorderRadius.circular(10.0),
            child: Image.asset(
              "${place["img"]}",
              height: 250.0,
              width: MediaQuery.of(context).size.width - 40.0,
              fit: BoxFit.cover,
            ),
          );
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
          ),
          onPressed: () => Navigator.pop(context),
        ),
        actions: <Widget>[
          IconButton(
            icon: IconBadge(
              icon: Icons.notifications_none,
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(
          left: 20.0,
          right: 20.0,
          top: 10.0,
          bottom: 20.0,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // 图片轮播
            buildSlider(),
            // 标题
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "${place["name"]}",
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 20.0,
                  ),
                  maxLines: 2,
                  textAlign: TextAlign.left,
                ),
                IconButton(
                  icon: Icon(
                    Icons.bookmark,
                  ),
                  onPressed: () {},
                ),
              ],
            ),
            SizedBox(height: 3.0),
            // 位置
            Row(
              children: [
                Icon(
                  Icons.location_on,
                  size: 14.0,
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
            SizedBox(height: 20.0),
            // 价格
            Text(
              "${place["price"]}",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 17.0,
              ),
              maxLines: 1,
              textAlign: TextAlign.left,
            ),
            SizedBox(height: 40),
            // 详情
            Text(
              "Details",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16.0,
              ),
              maxLines: 1,
              textAlign: TextAlign.left,
            ),
            SizedBox(height: 10.0),
            Text(
              "${place["details"]}",
              style: TextStyle(
                fontSize: 15.0,
              ),
              textAlign: TextAlign.left,
            ),
          ],
        ),
      ),
    );
  }
}
