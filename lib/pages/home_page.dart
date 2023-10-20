import 'package:flutter/material.dart' hide SearchBar;
import 'package:flutter_travel/util/places.dart';
import 'package:flutter_travel/widgets/horizontal_place_item.dart';
import 'package:flutter_travel/widgets/icon_badge.dart';
import 'package:flutter_travel/widgets/search_bar.dart';
import 'package:flutter_travel/widgets/vertical_place_item.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Widget buildHorizontalList(BuildContext context) {
    return SizedBox(
      height: 250,
      width: double.infinity,
      child: ListView.separated(
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: places.length,
        separatorBuilder: (BuildContext context, int index) {
          return SizedBox(width: 20);
        },
        itemBuilder: (BuildContext context, int index) {
          Map<String, String> place = places.reversed.toList()[index];
          return HorizontalPlaceItem(place: place);
        },
      ),
    );
  }

  buildVerticalList() {
    return ListView.separated(
      primary: false,
      physics: NeverScrollableScrollPhysics(),
      separatorBuilder: (BuildContext context, int index) {
        return SizedBox(height: 15);
      },
      shrinkWrap: true,
      itemCount: places.length,
      itemBuilder: (BuildContext context, int index) {
        Map<String, String> place = places[index];
        return VerticalPlaceItem(place: place);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.menu),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: IconBadge(
              icon: Icons.notifications_none,
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Where are you \ngoing?",
                style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.w600,
                ),
              ),

              SizedBox(height: 20),

              // 搜索栏
              SearchBar(),

              SizedBox(height: 20),
              buildHorizontalList(context),

              buildVerticalList(),
            ],
          ),
        ),
      ),
    );
  }
}
