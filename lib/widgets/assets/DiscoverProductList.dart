import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:mecommerce/screens/ProductDetails.dart';

import 'package:random_color/random_color.dart';

final List<Color> colors = [
  RandomColor().randomMaterialColor(
      debug: false, colorSaturation: ColorSaturation.custom(Range(9, 7))),
  RandomColor().randomMaterialColor(
      debug: false, colorSaturation: ColorSaturation.custom(Range(9, 7))),
  RandomColor().randomMaterialColor(
      debug: false, colorSaturation: ColorSaturation.custom(Range(9, 7))),
  RandomColor().randomMaterialColor(
      debug: false, colorSaturation: ColorSaturation.custom(Range(9, 7))),
  RandomColor().randomMaterialColor(
      debug: false, colorSaturation: ColorSaturation.custom(Range(9, 7))),
];

class DiscoverProductList extends StatelessWidget {
  DiscoverProductList({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.46,
      width: MediaQuery.of(context).size.height * 0.48,
      child: CarouselSlider.builder(
          itemCount: 5,
          itemBuilder: (_, index, index2) {
            return ProductWidgetCarousel(
              index: index,
            );
          },
          options: CarouselOptions(
              scrollDirection: Axis.horizontal,
              viewportFraction: 0.8,
              enlargeCenterPage: true,
              aspectRatio: 1.4,
              enableInfiniteScroll: false,
              enlargeStrategy: CenterPageEnlargeStrategy.scale)),
    );
  }
}

class ProductWidgetCarousel extends StatelessWidget {
  int index;
  ProductWidgetCarousel({
    this.index,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(
          context,
          MaterialPageRoute(
              builder: (_) => ProductDetails(this.key, index, colors[index]))),
      child: Container(
        width: 360,
        height: 200,
        child: Stack(
          children: [
            Hero(
              tag: 'container$index',
              child: ClipPath(
                child: Container(
                  width: 230,
                  height: 400,
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    color: colors[index],
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: Container(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        'MARCA',
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      ),
                      Text(
                        'NOME MODELLO',
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      Text(
                        'PREZZO',
                        style: TextStyle(fontSize: 15, color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Align(
                alignment: Alignment.topRight,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Hero(
                    tag: 'productImage$index',
                    child: Image.asset(
                      'assets/test.png',
                      width: 200,
                    ),
                  ),
                )),
            Hero(
              tag: 'like$index',
              child: GestureDetector(
                onTap: () => print('like'),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Icon(
                    Icons.favorite_outline,
                    size: 30,
                    color: Colors.white,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
