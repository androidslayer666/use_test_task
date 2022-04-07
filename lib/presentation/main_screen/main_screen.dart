import 'package:flutter/material.dart';
import 'package:test_apps/presentation/main_screen/pages/list_places_page/list_places_page.dart';
import 'package:test_apps/presentation/main_screen/pages/manu_page/menu_page.dart';
import 'package:test_apps/presentation/main_screen/pages/notification_page/notification_page.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currentPageIndex = 0;

  final List<Widget> _pages = [const MenuPage(), const ListPlacesPage(), const NotificationPage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.only(top: 85, right: 20, left: 20),
      child: Column(children: [
        MainScreenAppBarButtonsRow(
            onButtonClick: (value) {
              setState(() {
                _currentPageIndex = value;
              });
            },
            currentPageIndex: _currentPageIndex),
        _pages[_currentPageIndex]
      ]),
    ));
  }
}

class MainScreenAppBarButtonsRow extends StatelessWidget {
  const MainScreenAppBarButtonsRow(
      {Key? key, required this.onButtonClick, required this.currentPageIndex})
      : super(key: key);

  final int currentPageIndex;
  final Function onButtonClick;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        AppBarButton(
          chosen: currentPageIndex == 0,
          asset: 'assets/images/menu_icon.png',
          onButtonClick: () => onButtonClick(0),
        ),
        AppBarButton(
          chosen: currentPageIndex == 1,
          asset: 'assets/images/place_icon.png',
          onButtonClick: () => onButtonClick(1),
        ),
        AppBarButton(
          chosen: currentPageIndex == 2,
          asset: 'assets/images/notification_icon.png',
          onButtonClick: () => onButtonClick(2),
        )
      ],
    );
  }
}

class AppBarButton extends StatelessWidget {
  const AppBarButton(
      {Key? key,
      required this.chosen,
      required this.asset,
      required this.onButtonClick})
      : super(key: key);

  final bool chosen;
  final String asset;
  final Function onButtonClick;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onButtonClick(),
      child: Container(
        height: 45,
        width: 45,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: chosen
              ? Theme.of(context).primaryColor
              : Theme.of(context).backgroundColor,
        ),
        child: Image.asset(asset,
          color: chosen
              ? Theme.of(context).backgroundColor
              : Theme.of(context).primaryColor,
        ),
      ),
    );
  }
}
