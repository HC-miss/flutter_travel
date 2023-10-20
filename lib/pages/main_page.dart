import 'package:flutter/material.dart';
import 'package:flutter_travel/pages/home_page.dart';
import 'package:flutter_travel/widgets/icon_badge.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  late PageController _pageController;
  int _page = 0;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: _page);
  }

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }

  /// 跳转到指定页面
  void navigationTapped(int page) {
    _pageController.jumpToPage(page);
  }

  /// 页面切换
  void onPageChanged(int page) {
    // 页面变化 变更数据 并刷新页面（BottomAppBar）
    setState(() {
      _page = page;
    });
  }

  Widget barIcon({
    IconData icon = Icons.home,
    int page = 0,
    bool badge = false,
  }) {
    Color accentColor = Theme.of(context).colorScheme.secondary;
    return IconButton(
      icon: badge ? IconBadge(icon: icon, size: 24.0) : Icon(icon, size: 24.0),
      color: _page == page ? accentColor : Colors.blueGrey[300],
      onPressed: () => _pageController.jumpToPage(page),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        physics: NeverScrollableScrollPhysics(),
        onPageChanged: onPageChanged,
        children: List<Widget>.generate(4, (index) => HomePage()),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Theme.of(context).primaryColor,
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(width: 7.0),
            barIcon(icon: Icons.home, page: 0),
            barIcon(icon: Icons.favorite, page: 1),
            barIcon(icon: Icons.mode_comment, page: 2, badge: true),
            barIcon(icon: Icons.person, page: 3),
            SizedBox(width: 7.0),
          ],
        ),
      ),
    );
  }
}
