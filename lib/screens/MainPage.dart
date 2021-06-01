import 'dart:math';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:mecommerce/provider/AppGeneralStateProvider.dart';
import 'package:mecommerce/widgets/assets/BottomNavigationEcommerce.dart';
import 'package:mecommerce/widgets/assets/CategoryList.dart';
import 'package:mecommerce/widgets/assets/DiscoverProductList.dart';
import 'package:mecommerce/widgets/assets/DiscoverTopBar.dart';
import 'package:mecommerce/widgets/assets/HitList.dart';
import 'package:provider/provider.dart';
import 'package:random_color/random_color.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    AppGeneralStateProvider appGeneralStateProvider =
        Provider.of<AppGeneralStateProvider>(context);
    return Scaffold(
      bottomNavigationBar: BottomNavicationEcommerce(
          appGeneralStateProvider: appGeneralStateProvider),
      body: Container(
        margin: EdgeInsets.only(top: 20),
        width: double.infinity,
        child: Column(
          children: [
            DiscoverTopBar(),
            CategoryList(
              currentIndex: appGeneralStateProvider.categoryIndex,
              onTap: (newVal) => appGeneralStateProvider.categoryIndex = newVal,
            ),
            Row(
              children: [
                HitList(
                  currentIndex: appGeneralStateProvider.hitListIndex,
                  onTap: (newVal) =>
                      appGeneralStateProvider.hitListIndex = newVal,
                ),
                DiscoverProductList(),
              ],
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Text(
                  'More',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.25,
              width: MediaQuery.of(context).size.width,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 5,
                  itemBuilder: (_, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Stack(
                        children: [
                          Container(
                            height: MediaQuery.of(context).size.height * 0.24,
                            width: 170,
                            child: Card(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              elevation: 6,
                              child: Column(
                                children: [
                                  Align(
                                    alignment: Alignment.topRight,
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                          top: 8.0, right: 8),
                                      child: Icon(Icons.favorite_outline),
                                    ),
                                  ),
                                  Image.asset(
                                    'assets/test1.png',
                                    width: 70,
                                  ),
                                  Text('Nome Modello'),
                                  Text('100&'),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 15.0, vertical: 15),
                            child: Container(
                                width: 25,
                                height: 60,
                                child: Card(
                                  color: Colors.pinkAccent,
                                  child: RotatedBox(
                                      quarterTurns: 3,
                                      child: Text(
                                        'NEW',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(color: Colors.white),
                                      )),
                                )),
                          )
                        ],
                      ),
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}
