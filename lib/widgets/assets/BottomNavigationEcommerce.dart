import 'package:flutter/material.dart';
import 'package:mecommerce/provider/AppGeneralStateProvider.dart';

class BottomNavicationEcommerce extends StatelessWidget {
  const BottomNavicationEcommerce({
    Key key,
    @required this.appGeneralStateProvider,
  }) : super(key: key);

  final AppGeneralStateProvider appGeneralStateProvider;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: Colors.transparent,
      fixedColor: Colors.transparent,
      elevation: 0,
      onTap: (index) => appGeneralStateProvider.pageIndex = index,
      currentIndex: appGeneralStateProvider.pageIndex,
      items: [
        BottomNavigationBarItem(
            icon: Icon(
              Icons.home_outlined,
              color: Colors.grey,
            ),
            activeIcon: Icon(
              Icons.home_outlined,
              color: Colors.red[900],
            ),
            label: ''),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.favorite_outline,
              color: Colors.grey,
            ),
            activeIcon: Icon(
              Icons.favorite_outline,
              color: Colors.red[900],
            ),
            label: ''),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.home_work_outlined,
              color: Colors.grey,
            ),
            activeIcon: Icon(
              Icons.home_work_outlined,
              color: Colors.red[900],
            ),
            label: ''),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.shopping_bag_outlined,
              color: Colors.grey,
            ),
            activeIcon: Icon(
              Icons.shopping_bag_outlined,
              color: Colors.red[900],
            ),
            label: ''),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.account_circle_outlined,
              color: Colors.grey,
            ),
            activeIcon: Icon(
              Icons.account_circle_outlined,
              color: Colors.red[900],
            ),
            label: ''),
      ],
    );
  }
}
